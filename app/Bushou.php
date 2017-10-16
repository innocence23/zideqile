<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bushou extends Model
{
    protected $fillable = ['bihua', 'name', 'desc', 'created_by', 'updated_by', 'status'];

    public function setDescAttribute($attr)
    {
    if(!isset($attr) || empty($attr))
    {
        $this->attributes['desc'] = '';
    }
    }
}
