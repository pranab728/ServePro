<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{

   protected $fillable = [
       'name',
       'username',
       'photo',
       'zip', 
       'residency', 
       'city', 
       'address', 
       'phone', 
       'fax', 
       'email',
       'password',
       'verification_link',
       'affilate_code',
       'is_provider',
       'twofa',
       'go',
       'details',
       'kyc_status',
       'kyc_info',
       'kyc_reject_reason',
       'planid',
       'plan_expiredate',
       'is_seller',
       'connect',
       'service_limit',
       'job_limit'

    ];

    protected $hidden = [
        'password', 'remember_token'
    ];

    public function balanceTransfers(){
        return $this->hasMany(BalanceTransfer::class);
    }

   
    public function userSubscriptions(){
        return $this->hasMany('App\Models\UserSubscription','user_id');
    }

    public function deposits(){
        return $this->hasMany(Deposit::class);
    }

    public function withdraws()
    {
        return $this->hasMany(Withdraw::class);
    }


    public function notifications()
    {
        return $this->hasMany('App\Models\Notification');
    }

    public function transactions()
    {
        return $this->hasMany('App\Models\Transaction','user_id');
    }
    public  function commissions(){
        return $this->hasMany(Commission::class);
    }

    public function jobrequests()
    {
        return $this->hasMany(Jobrequest::class,'seller_id');
    }

    public function jobordersbuyer()
    {
        return $this->hasMany(JobOrder::class,'buyer_id');
    }

    public function jobs()
    {
        return $this->hasMany(Job::class, 'buyer_id');
    }

    public function services()
    {
        return $this->hasMany(Service::class, 'seller_id');
    }
    public function serviceorders()
    {
        return $this->hasMany(ServiceOrder::class,'seller_id');
    }
}
