<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = ['uid', 'nickname', 'parent_id', 'commentable_id',
        'commentable_type', 'support', 'content', 'status'];

    //
    public function user(){
        return $this->hasOne('App\User', 'id', 'uid');
    }
}
