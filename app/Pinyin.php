<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pinyin extends Model
{
    protected $fillable = ['first', 'name', 'status'];

    public function user(){
        return $this->hasOne('App\Admin', 'id', 'created_by');
    }
}
