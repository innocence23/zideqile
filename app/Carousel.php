<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carousel extends Model
{
    protected $fillable = ['name', 'url', 'image', 'desc', 'weight', 'info', 'status'];

}
