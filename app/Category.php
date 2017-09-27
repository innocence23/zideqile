<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'pid', 'weight', 'status', 'created_by', 'updated_by'];

    //
    static public function cateList()
    {
        $cate = self::orderBy('id')->pluck('name', 'id');
        return $cate;
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function posts()
    {
        return $this->hasMany('App\Models\Post');
    }
}
