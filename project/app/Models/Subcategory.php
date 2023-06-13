<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'title',
        'slug',
        'image',
        'status',
    ];

    public function category(){
        return $this->belongsTo('App\Models\Category', 'category_id');
    }

    public function services(){
        return $this->hasMany( 'App\Models\Service', 'subcategory_id' );
    }

    public function jobs(){
        return $this->hasMany( 'App\Models\Job', 'subcategory_id' );
    }
}
