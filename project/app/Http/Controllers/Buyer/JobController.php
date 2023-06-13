<?php

namespace App\Http\Controllers\Buyer;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\Category;
use App\Models\City;
use App\Models\Country;
use App\Models\Job;
use App\Models\Jobrequest;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Mews\Purifier\Facades\Purifier;

class JobController extends Controller
{
    public function jobs()
    {
        $jobs= Job::where('buyer_id',auth()->id())->get();
        return view('buyer.jobs.index',compact('jobs'));
    }

    public function jobcreate()
    {

        $categories = Category::where('status',1)->get();
        $subcategories= Subcategory::where('status',1)->get();
        $countries = Country::where('status',1)->get();
        $cities = City::where('status',1)->get();
        $areas = Area::where('status',1)->get();
        return view('buyer.jobs.create',compact('categories', 'subcategories', 'countries', 'cities', 'areas'));
    }

    public function jobstore(Request $request)
    {
        if($request->is_job_online == 0){
           $request->validate([
            'job_country_id' => 'required',
            'job_city_id' => 'required',
            'job_area_id' => 'required',
        ]);
        }

       $request->validate([
            'job_title' => 'required',
            'job_slug' => 'required|unique:jobs',
            'category_id' => 'required',
            'description' => 'required',
            'budget' => 'required',
            'deadline' => 'required',
            'image' => 'required|mimes:jpeg,jpg,png',
        
        ]);

        $input = $request->all();
        $job = new Job();

        $input['buyer_id'] = auth()->id();
        $input['status'] = 0;
        $input['description']= Purifier::clean($request->description);

        if($request->is_job_online == 1){
            $input['job_country_id'] = 0;
            $input['job_city_id'] = 0;
            $input['job_area_id'] = 0;
        }
        else{
            $input['job_country_id'] = $request->job_country_id;
            $input['job_city_id'] = $request->job_city_id;
            $input['job_area_id'] = $request->job_area_id;
        }

        if($request->hasFile('image')){
            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$img);
            $input['image'] = $img;
        }


        if($request->deadline < date('Y-m-d')){
            return back()->with('error','Deadline must be greater than today');
        }
        else{
            $input['deadline'] = $request->deadline;
           
        }

        $input['budget'] = round(baseCurrencyAmount($request->budget),2);
        $job->fill($input)->save();

        return redirect()->back()->with('success','Job Added Successfully'); 
           
         
    }


    public function jobedit($id)
    {
        $job = Job::where('id',$id)->first();
        $categories = Category::where('status',1)->get();
        $subcategories= Subcategory::where('status',1)->get();
        $countries = Country::where('status',1)->get();
        $cities = City::where('status',1)->get();
        $areas = Area::where('status',1)->get();
        return view('buyer.jobs.edit',compact('job','categories', 'subcategories', 'countries', 'cities', 'areas'));
    }

    public function jobupdate(Request $request, $id)
    {
       
       
        if($request->is_job_online == 0){
           $request->validate([
            'job_country_id' => 'required',
            'job_city_id' => 'required',
            'job_area_id' => 'required',
        ]);
        }

       $request->validate([
            'job_title' => 'required',
            'job_slug' => 'required|unique:jobs,job_slug,'.$id,
            'category_id' => 'required',
            'description' => 'required',
            'budget' => 'required',
            'deadline' => 'required',
            'image' => 'mimes:jpeg,jpg,png',
        
        ]);

       

        $input = $request->all();
        $job = Job::findOrFail($id);

        $input['buyer_id'] = auth()->id();
        $input['status'] = 0;
        $input['description']= Purifier::clean($request->description);

        if($request->is_job_online == 1){
            $input['job_country_id'] = 0;
            $input['job_city_id'] = 0;
            $input['job_area_id'] = 0;
        }
        else{
            $input['job_country_id'] = $request->job_country_id;
            $input['job_city_id'] = $request->job_city_id;
            $input['job_area_id'] = $request->job_area_id;
        }

        if($request->hasFile('image')){
            $image = $request->file('image');
            $img = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$img);
            @unlink('assets/images/'.$job->image);
            $input['image'] = $img;
        }


      $old= date('Y-m-d',strtotime($job->deadline)) ;
      
      if($request->deadline != $old){
        if($request->deadline < date('Y-m-d')){
            return back()->with('error','Deadline must be greater than today');
        }
        else{
            $input['deadline'] = $request->deadline;
           
        }
    }

        $input['budget'] = round(baseCurrencyAmount($request->budget),2);

        $job->fill($input)->save();
        
        return redirect()->back()->with('success','Job Updated Successfully');

    }

    public function jobdelete($id)
    {
        $job = Job::findOrFail($id);
        @unlink('assets/images/'.$job->image);
        $job->orders()->delete();
        Jobrequest::where('job_id',$id)->delete();
        $job->delete();
        return redirect()->back()->with('success','Job Deleted Successfully');
    }
}
