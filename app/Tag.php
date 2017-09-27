<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
	protected $fillable = ['name', 'created_by', 'updated_by', 'status'];

    static public function tagList()
    {
        $tag = self::orderBy('id')->pluck('name', 'id');
        return $tag;
    }

    /**
     * 获得此标签下所有的文章。
     */
    public function posts()
    {
        return $this->morphedByMany('App\Post', 'taggable');
    }

    /**
     *  获得此标签下所有的字典。
     */
    public function dicts()
    {
        return $this->morphedByMany('App\Dict', 'taggable');
    }
}
