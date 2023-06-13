<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\Category;
use App\Models\City;
use App\Models\Country;
use App\Models\Jobrequest;
use App\Models\Service;
use App\Models\Subcategory;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Mews\Purifier\Facades\Purifier;

class ServiceController extends Controller
{
    public function index()
    {
        $services = Service::where('seller_id',auth()->user()->id)->get();
        return view('user.service.index', compact('services'));
    }

    public function addService(){
        $categories = Category::where('status',1)->get();
        $subcategories= Subcategory::where('status',1)->get();
        $countries = Country::where('status',1)->get();
        $cities = City::where('status',1)->get();
        $areas = Area::where('status',1)->get();
        return view('user.service.add', compact('categories','subcategories','countries','cities','areas'));
    }

    public function storeService(Request $request){

        
            $user = Auth::user();
            
            $count = DB::table('services')->where('seller_id','=',$user->id)->count();
            

            if($user->plan_type != 'life_time'){
            if(Carbon::now() > $user->plan_expiredate){
                return redirect()->back()->with('error','Your subscription has been expired');
            }}
            
            if($count >= $user->service_limit){
                return redirect()->back()->with('error','You have reached your service limit');
            }

            
            
        if($request->is_service_online == 1){
            $request->validate([
                'delivery_days' => 'required',
                'revision' => 'required',
                'price' => 'required',
            ]);
        }
        if($request->is_service_online == 0){
            $request->validate([
                'service_country_id' => 'required',
                'service_city_id' => 'required',
                'service_area_id' => 'required',
            ]);
        }

        $request->validate([
            'title' => 'required|unique:services,title',
            'category_id' => 'required',
            'description' => 'required',
            'slug' => 'required',
            'image' => 'required|mimes:jpeg,jpg,png',
        ]);
       
        $input = $request->all();
        $service = new Service();

        if($request->hasFile('image')){
            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$img);
            $input['image'] = $img;
        }
       
        $input['seller_id'] = auth()->id();
        $input['status'] = 0;
        $input['description']= Purifier::clean($request->description);

       if($request->is_service_online == 1){
            $input['delivery_days'] = $request->delivery_days;
            $input['revision'] = $request->revision;
            $input['price'] = baseCurrencyAmount($request->price);
        }
        else{
            $input['delivery_days'] = 0;
            $input['revision'] = 0;
            $input['price'] = 0;
        }

        $service->fill($input)->save();
        return redirect()->back()->with('success','Service Added Successfully'); 
    }

    public function editService($id){
      
        $service = Service::where('id',$id)->first();
        $categories = Category::where('status',1)->get();
        $subcategories= Subcategory::where('status',1)->get();
        $countries = Country::where('status',1)->get();
        $cities = City::where('status',1)->get();
        $areas = Area::where('status',1)->get();
        return view('user.service.edit', compact('service','categories','subcategories', 'countries','cities','areas'));
    }

    public function updateService(Request $request, $id){


        if($request->is_service_online == 1){
            $request->validate([
                'delivery_days' => 'required',
                'revision' => 'required',
                'price' => 'required',
            ]);
        }
        if($request->is_service_online == 0){
            $request->validate([
                'service_country_id' => 'required',
                'service_city_id' => 'required',
                'service_area_id' => 'required',
            ]);
        }
        
        $request->validate([
            'title' => 'required|unique:services,title,'.$id,
            'category_id' => 'required',
            'description' => 'required',
            'slug' => 'required',
            'image' => 'mimes:jpeg,jpg,png',

        ]);
       
        $input = $request->all();
        $service = Service::whereId($id)->first();
       
        $input['seller_id'] = auth()->id();
        $input['status'] = $service->status;
        $input['description']= Purifier::clean($request->description);

        if($request->hasFile('image')){
            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$img);

            if(file_exists('assets/images/'.$service->image)){
                unlink('assets/images/'.$service->image);
            }
            $input['image'] = $img;
        }
        if($request->is_service_online == 1){
            $input['delivery_days'] = $request->delivery_days;
            $input['revision'] = $request->revision;
            $input['price'] = baseCurrencyAmount($request->price);
        }
        else{
            $input['delivery_days'] = 0;
            $input['revision'] = 0;
            $input['price'] = 0;
        }

        $service->fill($input)->save();

        return redirect()->back()->with('success','Service Updated Successfully'); 
    }

    public function deleteService($slug){

        $service = Service::where('slug',$slug)->first();
        if(file_exists('assets/images/'.$service->image)){
            unlink('assets/images/'.$service->image);
        }
        $service->delete();
        return redirect()->back()->with('success','Service Deleted Successfully');
    }
}
