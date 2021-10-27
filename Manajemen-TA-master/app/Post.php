<?php

namespace App;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{   use Sluggable;
     


    protected $fillable = ['title', 'content','thumbnail','slug','user_id'];
	protected $dates = ['created_at'];


    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function user()
    {
    	return $this->belongsTo(User::class);	
    }
    public function thumbnail()
    {
    	// if($this->thumbnail){
    	// 	return $this->thumbnail;
    	// }else{
    	// 	return asset('no-thumbnail.jpg');
    	// }
    
    	// if(!$this->thumbnail){
    	// 	return asset('no-thumbnail.jpg');
    	// }
    	// return $this->thumbnail;

    	return !$this->thumbnail ? asset('no-thumbnail.jpg') : $this->thumbnail;
    }
}
