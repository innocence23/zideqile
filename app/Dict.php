<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dict extends Model
{
    protected $fillable = ['jianti', 'fanti', 'slug', 'pinyin', 'bushou_id', 'cate_id', 'zitu', 'image', 'yitizi',
        'shuowen', 'jieshi', 'cizu', 'created_by', 'updated_by', 'status'];

    public function user(){
        return $this->hasOne('App\Admin', 'id', 'created_by');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function bushou()
    {
        return $this->belongsTo('App\Bushou', 'bushou_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category()
    {
        return $this->belongsTo('App\Category', 'cate_id');
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphToMany
     */
    public function tags()
    {
        return $this->morphToMany('App\Tag', 'taggable');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function comments()
    {
        return $this->morphMany('App\Comment', 'commentable');
    }
}
