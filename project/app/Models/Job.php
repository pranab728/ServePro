<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'subcategory_id',
        'buyer_id',
        'job_country_id',
        'job_city_id',
        'job_area_id',
        'job_title',
        'job_slug',
        'description',
        'image',
        'status',
        'is_service_available',
        'budget',
        'deadline',
        'is_job_online',
        'views',
        'request',
        'created_at',
        'updated_at',

    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function orders()
    {
        return $this->hasMany(JobOrder::class,'job_id');
    }

    public function buyer()
    {
        return $this->belongsTo(User::class, 'buyer_id');
    }

    public function country()
    {
        return $this->belongsTo(Country::class, 'job_country_id');
    }

    public function Jobrequests()
    {
        return $this->hasMany(Jobrequest::class, 'job_id');
    }



    


}
