<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    use HasFactory;
    protected $fillable = [
        'uuid',
        'county',
        'country',
        'image',
        'town',
        'description',
        'address',
        'image',
        'thumbnail',
        'latitude',
        'longitude',
        'bedroom',
        'bathroom',
        'price',
        'propertytype',
        'type'
        
        
    ];
}
