
@extends('layouts.user')

@push('css')
    
@endpush

@section('contents')
<div class="breadcrumb-area">
    <h3 class="title">@lang('Edit Attributes')</h3>
    <ul class="breadcrumb">

        <li>
            <a href="{{ route('user.dashboard') }}">@lang('Dashboard')</a>
        </li>
        <li>
            @lang('Edit Attributes')
        </li>
    </ul>
</div>
<div class="dashboard--content-item">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-xl-10 col-xxl-10">
            <div class="profile--card">
                @includeIf('includes.flash')

               @if ($serviceincludes->count()>0 && $serviceadditional->count() > 0  && $servicebenefits->count() > 0)  
                   
                <form id="request-form" action="{{ route('user.update.attribute',$service->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <h5>{{ $service->is_service_online== 1 ? 'Online': 'Offline' }}</h5>

                    {{-- include package section start --}}

                    @if ($serviceincludes->count()>0)
                        
                    
                    @if ($service->is_service_online == 0)

                    <input type="hidden" name="is_service_online" value="0">
                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('What is Included In This Package')</h4>
    
                        </div>
                        @foreach ($serviceincludes as $data)
                        <input type="hidden" name="attribute_id" value="{{ $data->id }}">
                        <div class="input my-4 row">
                            <div class="col-md-4">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" value="{{ $data->include_service_title }}" name="include_service_title[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#price">@lang('Price')</label>
                                <input id="price" value="{{ $data->include_service_price }}" name="include_service_price[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#duration">@lang('Qunatity')</label>
                                <input id="quantity" value="{{ $data->include_service_quantity }}" name="include_service_quantity[]" type="text" class="form-control" >
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @else
                    <input type="hidden" name="is_service_online" value="1">
                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('What is Included In This Package')</h4>
    
                        </div>
                        @foreach ($serviceincludes as $data)
                        <input type="hidden" name="attribute_id" value="{{ $data->id }}">
                        <div class="input my-4 row">
                            <div class="col-md-12">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" value="{{ $data->include_service_title }}" name="include_service_title[]" type="text" class="form-control" >
                            </div>
                        </div>
                        @endforeach
                        
                    </div>
                    @endif
                    @endif
                    {{-- include package section end  --}}


                    @if ($serviceadditional->count()>0)
                        
                     {{-- Additional package section start --}}
                     <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('Additional Packages')</h4>
                        </div>
                        @foreach ($serviceadditional as $data)
                        <input type="hidden" name="additional_id" value="{{ $data->id }}">
                        
                        <div class="input my-4 row">
                            <div class="col-md-4">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" value="{{ $data->additional_service_title }}" name="additional_service_title[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#price">@lang('Price')</label>
                                <input id="price" value="{{ $data->additional_service_price }}" name="additional_service_price[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#duration">@lang('Qunatity')</label>
                                <input id="quantity" value="{{ $data->additional_service_quantity }}" name="additional_service_quantity[]" type="text" class="form-control" >
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @endif
                    {{-- Benefits of the package --}}

                    @if ($servicebenefits->count()>0)
 
                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('Benefits of the package')</h4>
                        </div>
                        @foreach ($servicebenefits as $data)
                        <input type="hidden" name="benefit_id" value="{{ $data->id }}">
                        <div class="input my-4 row">
                            <div class="col-md-12">
                                <input id="title" value="{{ $data->benefits }}" name="benefits[]" type="text" class="form-control" placeholder="Type Here" >
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @endif


                    @if ($servicefaqs->count()>0)

                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>FAQs</h4>
                        </div>
                        @foreach ($servicefaqs as $data)
                        <input type="hidden" name="faq_id" value="{{ $data->id }}">
                        <div class="input my-4 row">
                            <div class="col-md-6">
                                <input id="title" value="{{ $data->faq_title }}" name="faq_title[]" type="text" class="form-control" placeholder="Type Here" >
                            </div>

                            <div class="col-md-6">
                                <textarea class="form-control nic-edit" name="faq_detail[]" id="" cols="30" rows="5">{{ $data->faq_detail }}</textarea>
                            </div>


                        </div>
                        @endforeach
                        
                    @endif
                    <div class="update-btn my-3">
                        <button type="submit" class="add-btn btn ">@lang('Update')</button>
                    </div>
                    
                </form>
                @else
                <h3 class="text-center">@lang('Please Add Attribute First')</h3>
                @endif
            </div>
        </div>
    </div>
</div>

@endsection

@push('js')

@endpush