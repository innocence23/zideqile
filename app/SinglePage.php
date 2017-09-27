<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SinglePage extends Model
{
    protected $fillable = ['name', 'type', 'content', 'status'];
}
