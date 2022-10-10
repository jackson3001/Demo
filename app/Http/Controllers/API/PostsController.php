<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Posts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Property;
use Image;




class PostsController extends Controller
{
    public function index()
    {
        $properties = Property::all()->toArray();
        return array_reverse($properties);
    }

    public function add(Request $request)
    {
        $request->validate([
            'uuid' => 'required',
            'county' => 'required',
            'country' => 'required',
            'town' => 'required',
            'address' => 'required',
            'bedroom' => 'required',
            'bathroom' => 'required',
            'price' => 'required',
            'type' => 'required',
            'propertytype' => 'required',
            'description' => 'required',
            'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
       

        

     

        $input = $request->all();
        $imageName = NULL;
        if ($image = $request->file('file')) {
            $imageName = time().'.'.$image->extension();
            $destinationPathThumbnail = public_path('thumbnail/');  
            $img = Image::make($image->path());   
            $img->resize(100, 100, function ($constraint) { 
                $constraint->aspectRatio();    
            })->save($destinationPathThumbnail.'/'.$imageName);   
            $destinationPath = public_path('img/');    
            $image->move($destinationPath, $imageName);
            $input['image'] = $imageName;
        }

        Property::create($input);

        return response()->json(['success'=> 'Post created successfully']);

    }

    public function edit($id)
    {
        $post = Property::find($id);
        return response()->json($post);
    }

    public function update($id, Request $request)
    {
        $post = Property::find($id);
        $request->validate([
            'county' => 'required',
            'country' => 'required',
            'town' => 'required',
            'address' => 'required',
            'bedroom' => 'required',
            'bathroom' => 'required',
            'price' => 'required',
            'type' => 'required',
            'propertytype' => 'required',
            'description' => 'required'
        ]);

        $input = $request->all();
        $imageName = NULL;
        if ($image = $request->file('file')) {
            $imageName = time().'.'.$image->extension();    
            $destinationPathThumbnail = public_path('thumbnail/'); 
            $img = Image::make($image->path());   
            $img->resize(100, 100, function ($constraint) {   
                $constraint->aspectRatio();   
            })->save($destinationPathThumbnail.'/'.$imageName);  
            $destinationPath = public_path('img/');
    
            $image->move($destinationPath, $imageName);
            $input['image'] = $imageName;

            if(substr($post->image, 0, 5) == 'https'){}else{
            unlink('img/'.$post->image);
            unlink('thumbnail/'.$post->image);
            }
        }
        
        $post->update($input);

        return response()->json(['success'=> 'Post update successfully']);
    }

    public function delete($id)
    {
        $post = Property::find($id);
        $post->delete();
        unlink('img/'.$post->image);
        return response()->json(['success'=> 'Post deleted successfully']);

    }

    public function part1(Request $request)
    {
        $api = env('API_KEY');
        $page = 3;
        $httpClient = new \GuzzleHttp\Client();
        $request =
            $httpClient
                ->get("https://trial.craig.mtcserver15.com/api/properties?api_key=$api&page=$page");

        $response = json_decode($request->getBody()->getContents());
        $result = $response->data;
        foreach($result as $data){
            $sel = Property::where('uuid', $data->uuid)->get();

           
            if (!$sel->isEmpty()){
                $update = Property::where('uuid', $data->uuid)->update(['uuid' => $data->uuid,'county' => $data->county,'country' => $data->country,'town' => $data->town,'description' => $data->description,
                'address' => $data->address,'image' => $data->image_full,'thumbnail' => $data->image_thumbnail,'latitude' => $data->latitude,
                'longitude' => $data->longitude,'bedroom' => $data->num_bedrooms,'bathroom' => $data->num_bathrooms,'price' => $data->price,'type' => $data->type,'propertytype' => $data->property_type->title]);

            }
            else
            {

            $Property = Property::create(['uuid' => $data->uuid,'county' => $data->county,'country' => $data->country,'town' => $data->town,'description' => $data->description,
            'address' => $data->address,'image' => $data->image_full,'thumbnail' => $data->image_thumbnail,'latitude' => $data->latitude,
            'longitude' => $data->longitude,'bedroom' => $data->num_bedrooms,'bathroom' => $data->num_bathrooms,'price' => $data->price,'type' => $data->type,'propertytype' => $data->property_type->title]);

            }

        }
        $properties =  Property::orderBy('id','desc')->paginate(10);
        return view('list', compact('properties'));

    }

    public function getDatas(Request $request)
    {
        $data = Property::where('country', 'LIKE','%'.$request->keyword.'%')->OrWhere('county', 'LIKE','%'.$request->keyword.'%')->OrWhere('town', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('description', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('address', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('bedroom', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('bathroom', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('price', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('type', 'LIKE','%'.$request->keyword.'%')
        ->OrWhere('propertytype', 'LIKE','%'.$request->keyword.'%')
        ->get();
        return response()->json($data); 
    }
}
