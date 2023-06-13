<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Currency;
use App\Models\Service;
use App\Models\Serviceadditional;
use App\Models\Servicebenefit;
use App\Models\ServiceFaq;
use App\Models\Serviceincludes;
use Illuminate\Http\Request;

class ServiceAttributeController extends Controller
{
    public function attribute($slug)
    {
        $service = Service::where('slug',$slug)->first();
        return view('user.attribute.create',compact('service'));
    }

    public function storeAttribute(Request $request, $id)
    {

        
        
        $service_total_price=0;
        $include = array_filter($request->include_service_title);
        $additional= array_filter($request->additional_service_title);
        $benefits= array_filter($request->benefits);
        $faqs= array_filter($request->faq_title);

        if($request->is_service_online == 1){
           

            if($include){
                foreach($request->include_service_title as $key => $value){
                    $data['service_id'] = $id;
                    $data['seller_id'] = auth()->id();
                    $data['include_service_title'] = $request->include_service_title[$key];
                    $data['include_service_price'] =0 ;
                    $data['include_service_quantity'] = 0;

                    Serviceincludes::create($data);
                }
               
            }
        }
        else{
                  
            if($include ){

                foreach($include as $key => $value){
                    $data['service_id'] = $id;
                    $data['seller_id'] = auth()->id();
                    $data['include_service_title'] = $request->include_service_title[$key];
                    $data['include_service_price'] =baseCurrencyAmount($request->include_service_price[$key]) ;
                    $data['include_service_quantity'] = $request->include_service_quantity[$key];

                    $service_total_price += baseCurrencyAmount($request->include_service_price[$key]) * $request->include_service_quantity[$key];
                    Serviceincludes::create($data);
                }
                Service::where('id',$id)->update(['price'=>$service_total_price]);
            }
        }


        if($additional){
            foreach($additional as $key => $value){
                $data['service_id'] = $id;
                $data['seller_id'] = auth()->id();
                $data['additional_service_title'] = $request->additional_service_title[$key];
                $data['additional_service_price'] = baseCurrencyAmount($request->additional_service_price[$key]);
                $data['additional_service_quantity'] = $request->additional_service_quantity[$key];

                Serviceadditional::create($data);
            }
        }


        if($benefits){
            foreach($benefits as $key => $value){
                $data['service_id'] = $id;
                $data['seller_id'] = auth()->id();
                $data['benefits'] = $request->benefits[$key];
                Servicebenefit::create($data);
            }
        }

        if($faqs){
            foreach($faqs as $key => $value){
                $data['service_id'] = $id;
                $data['seller_id'] = auth()->id();
                $data['faq_title'] = $request->faq_title[$key];
                $data['faq_detail'] = $request->faq_detail[$key];
                ServiceFaq::create($data);
            }
        }

        return redirect()->back()->with('success','Service Attribute Added Successfully');

    }
    public function editAttribute($slug)
    {
        
        $service = Service::where('slug',$slug)->first();
        
        $serviceincludes = Serviceincludes::where('service_id',$service->id)->get();
        
        $serviceadditional = Serviceadditional::where('service_id',$service->id)->get();
        
        $servicebenefits = Servicebenefit::where('service_id',$service->id)->get();
        $servicefaqs = ServiceFaq::where('service_id',$service->id)->get();
        return view('user.attribute.edit',compact('service','serviceincludes','servicebenefits','serviceadditional', 'servicefaqs'));
    }

    public function updateAttribute(Request $request, $id)
    {
     
        
        $service_total_price=0;

        if($request->is_service_online == 1){
           

            if(isset($request->include_service_title)){
                foreach($request->include_service_title as $key => $value){
                    $data['service_id'] = $id;
                    $data['seller_id'] = auth()->id();
                    $data['include_service_title'] = $request->include_service_title[$key];
                    $data['include_service_price'] =0 ;
                    $data['include_service_quantity'] = 0;

                    Serviceincludes::where('id',$request->attribute_id)->update($data);
                }
               
            }
        }
        else{

            if(isset($request->include_service_title)){
                foreach($request->include_service_title as $key => $value){
                    $data['service_id'] = $id;
                    $data['seller_id'] = auth()->id();
                    $data['include_service_title'] = $request->include_service_title[$key];
                    $data['include_service_price'] =baseCurrencyAmount($request->include_service_price[$key]) ;
                    $data['include_service_quantity'] = $request->include_service_quantity[$key];

                    $service_total_price += baseCurrencyAmount($request->include_service_price[$key]) * $request->include_service_quantity[$key];
                    Serviceincludes::where('id',$request->attribute_id)->update($data);
                }
                Service::where('id',$id)->update(['price'=>$service_total_price]);
            }
        }

        if(isset($request->additional_service_title)){
            foreach($request->additional_service_title as $key => $value){
                $additional['service_id'] = $id;
                $additional['seller_id'] = auth()->id();
                $additional['additional_service_title'] = $request->additional_service_title[$key];
                $additional['additional_service_price'] = baseCurrencyAmount($request->additional_service_price[$key]);
                $additional['additional_service_quantity'] = $request->additional_service_quantity[$key];
                Serviceadditional::where('id',$request->additional_id)->update($additional);
            }
        }


        if(isset($request->benefits)){
            foreach($request->benefits as $key => $value){
                $benefits['service_id'] = $id;
                $benefits['seller_id'] = auth()->id();
                $benefits['benefits'] = $request->benefits[$key];
                Servicebenefit::where('id',$request->benefit_id)->update($benefits);
            }
        }

        return redirect()->back()->with('success','Service Attribute Added Successfully');


    }

}
