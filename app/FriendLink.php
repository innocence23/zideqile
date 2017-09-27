<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FriendLink extends Model
{
    protected $fillable = ['name', 'url', 'image', 'desc', 'weight', 'info', 'created_by', 'updated_by', 'status'];
}
