<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <title>{{env('APP_NAME')}}</title>
    <link href="{{ mix('css/app.css') }}" type="text/css" rel="stylesheet"/>
</head>
<body>
<a href="/" class="btn btn-success">Part 2</a>
<table class="table table-hover table-sm">
            <thead class="bg-dark text-light">
                <tr>
                    <th width="50" class="text-center">#</th>
                    <th>County</th>
                    <th>Country</th>
                    <th>Town</th>
                    <th>Description</th>
                    <th>Address</th>
                    <th class="text-center" width="120">Image</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Bathroom</th>
                    <th>Bedroom</th>
                    <th>Price($)</th>
                    <th>Type</th>
                    <th>Property Type</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($properties as $post)
                <tr>
                    <td class="text-center">{{ '#'}}.</td>
                    <td>{{ $post->county }}</td>
                    <td>{{ $post->country }}</td>
                    <td>{{ $post->town }}</td>
                    <td>{{$post->description}}</td>
                    <td>{{$post->address}}</td>
                    <td class="text-center">
                        @if(substr($post->image, 0, 5) == 'https')
                       
                        <div>
                            <img alt="post-img" width="100" src="{{ $post->image }}">
                        </div>
                        @else
                        <div>
                            <img alt="post-img" width="100" src="/img/{{$post->image}}">
                        </div>
                        @endif
                       
                    </td>
                    <td>{{$post->latitude}}</td>
                    <td>{{$post->longitude}}</td>
                    <td>{{$post->bathroom}}</td>
                    <td>{{$post->bedroom}}</td>
                    <td>{{$post->price}}</td>
                    <td>{{$post->type}}</td>
                    <td>{{$post->propertytype}}</td>
                   
                </tr>

                @endforeach
            </tbody>
        </table>
        {!! $properties->links() !!}
</body>
</html>