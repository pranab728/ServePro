
@extends('layouts.user')

@push('css')
    
@endpush

@section('contents')

<div class="breadcrumb-area">
    <h3 class="title">@lang('Edit Servicce')</h3>
    <ul class="breadcrumb">
        <div class="form-check form-switch me-5">
            <label class="form-check-label" for="flexSwitchCheckDefault">@lang('Online Service')</label>
            <input class="form-check-input" {{ $service->is_service_online == 1 ? 'checked': '' }} name="is_service_online" type="checkbox" id="check">
        </div>
        <li>
            <a href="{{ route('user.dashboard') }}">@lang('Dashboard')</a>
        </li>
        <li>
            @lang('Edit Service')
        </li>
    </ul>
</div>
<div class="dashboard--content-item">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-xl-10 col-xxl-10">
            <div class="profile--card">
                @includeIf('includes.flash')
                <form id="request-form" action="{{ route('user.update.service',$service->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="is_service_online" id="checkval" value="{{ $service->is_service_online }}">
                    <div class="row gy-4">
                        <div class="col-sm-6">
                            <label for="new-password" class="form-label">@lang('Select Category')</label>
                            <select name="category_id" id="category" class="form-control">
                                <option value="">@lang('Select Category')</option>
                                @foreach ($categories as $item)
                                    <option  value="{{ $item->id }}"  {{ $service->category_id==$item->id ? 'selected': '' }}>{{ __($item->title) }}</option>    
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label for="new-password" class="form-label">@lang('Select SubCategory')</label>
                           
                            <select name="subcategory_id" id="subcategory" class="form-control">
                                <option value="">@lang('Select SubCategory')</option>
                                @foreach ($subcategories as $item)
                                    <option {{ $service->subcategory_id==$item->id ? 'selected': '' }}  value="{{ $item->id }}" data-category="{{ $item->category_id }}">{{ __($item->title) }}</option>    
                                @endforeach

                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label for="service-title" class="form-label">@lang('Service Title')</label>
                            <input type="text" name="title" id="title" value="{{ $service->title }}" class="form-control"
                                placeholder="@lang('Service Title')" required>
                        </div>

                        <div class="col-sm-6 {{ $service->is_service_online==0 ? 'd-none' : ''}} online-class">
                            <label for="delivery_days" class="form-label">@lang('Delivery Days')</label>
                            <input type="integer" name="delivery_days" id="delivery_days" class="form-control" value="{{ $service->delivery_days }}" placeholder="@lang('Delivery Days')">
                        </div>
                        <div class="col-sm-6  {{ $service->is_service_online==0 ? 'd-none' : ''}} online-class">
                            <label for="revision" class="form-label">@lang('Revision')</label>
                            <input type="integer" value="{{ $service->revision }}" name="revision" id="revision" class="form-control" placeholder="@lang('Revision')">
                        </div>

                        <div class="col-sm-6 {{ $service->is_service_online==0 ? 'd-none' : ''}}  online-class">
                            <label for="price" class="form-label">@lang('Service Price')</label>
                            <input type="integer" value="{{ rootAmount($service->price) }}" name="price" id="price" class="form-control" placeholder="@lang('Service Price')">
                        </div>
                        
                        <div class=" {{ $service->is_service_online==0 ? 'col-sm-6' : 'col-sm-12'}} service">
                            <label for="video" class="form-label">@lang('Service video Url')</label>
                            <input type="text" name="video" value="{{ $service->video }}" id="video" class="form-control"
                                placeholder="@lang('Service Video Url')">
                        </div>

                        <div class="col-sm-4 offline-class {{ $service->is_service_online ==1 ? 'd-none':'' }} ">
                            <label for="country" class="form-label">@lang('Select Country')</label>
                            <select name="service_country_id" id="country" class="form-control">
                                <option value="">@lang('Select Country')</option>
                                @foreach ($countries as $item)
                                    <option {{ $item->id==$service->service_country_id ? 'selected' : '' }} value="{{ $item->id }}" >{{ __($item->name) }}</option>    
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-4 offline-class {{ $service->is_service_online ==1 ? 'd-none':'' }}">
                            <label for="city" class="form-label">@lang('Select Cities')</label>
                            <select name="service_city_id" id="city" class="form-control">
                                <option value="">@lang('Select City')</option>
                                @foreach ($cities as $item)
                                    <option {{ $item->id==$service->service_city_id ? 'selected' : '' }} value="{{ $item->id }}" data-country="{{ $item->country_id }}">{{ __($item->title) }}</option>    
                                @endforeach
                            </select>
                        </div>
                        {{-- Area section start --}}
                        <div class="col-sm-4 offline-class {{ $service->is_service_online ==1 ? 'd-none':'' }}">
                            <label for="area" class="form-label">@lang('Select Area')</label>
                            <select name="service_area_id" id="area" class="form-control">
                                <option  value="">@lang('Select Area')</option>
                                @foreach ($areas as $item)
                                    <option {{ $item->id==$service->service_area_id ? 'selected' : '' }}  value="{{ $item->id }}" data-city="{{ $item->city_id }}">{{ __($item->title) }}</option>    
                                @endforeach
                            </select>
                        </div>
                        {{-- Area section end --}}  
                      
                        

                        <div class="col-sm-12">
                            <label for="text" class="form-label">@lang('Service Description')</label>
                            <textarea name="description" id="description" class="form-control" placeholder="@lang('Service Description')" >{{ strip_tags($service->description)  }}</textarea>
                        </div>

                        <div class="col-sm-12">
                           <label for="text" class="form-label">@lang('Service Image')</label>
                            <div class="user--profile mb-5">
                                <div class="thumb">
                                    <img src="{{ $service->image ? asset('assets/images/'.$service->image) : asset('assets/images/no-image.png') }}" alt="clients">
                                </div>
                                <div class="remove-thumb">
                                    <i class="fas fa-times"></i>
                                </div>
                                <div class="content">
                                    <div class="mt-4">
                                        <label class="btn btn-sm btn--base text--dark">
                                            @lang('Upload Service Image')
                                            <input type="file" id="profile-image-upload" name="image" hidden>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <input type="hidden" id="slug" name="slug" value="{{ $service->slug }}"> 
                        <div class="col-sm-12">
                            <div class="text-end">
                                <button type="submit" class="cmn--btn">@lang('Update')</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@push('js')
<script type="text/javascript">
    "use strict";
    var optgroups = $('#subcategory > option');
    $('#category').on('change', function(){
        var category = $(this).val();
        var options = optgroups.filter('[data-category="'+category+'"]');
       
        $('#subcategory').html( '<option value="">@lang('Select SubCategory')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );

    });

    var countryOptgroups = $('#city > option');
    $('#country').on('change', function(){
        var country = $(this).val();
        var options = countryOptgroups.filter('[data-country="'+country+'"]');
       
        $('#city').html( '<option value="">@lang('Select City')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );

    });


    var cityOptgroups = $('#area > option');
    $('#city').on('change', function(){
        var city = $(this).val();
        var options = cityOptgroups.filter('[data-city="'+city+'"]');
       
        $('#area').html( '<option value="">@lang('Select Area')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );

    });

    $('#title').on('keyup', function(){
        var title = $(this).val();
        var slug = title.replace(/[^a-z0-9]/gi, '-').replace(/-+/g, '-').replace(/^-|-$/g, '');
        $('#slug').val(slug);
    });

  "use strict"
  var prevImg = $('.user--profile .thumb').html();
  function proPicURL(input) {
      if (input.files && input.files[0]) {
          var uploadedFile = new FileReader();
          uploadedFile.onload = function (e) {
              var preview = $('.user--profile').find('.thumb');
              preview.html(`<img src="${e.target.result}" alt="user">`);
              preview.addClass('image-loaded');
              preview.hide();
              preview.fadeIn(650);
              $(".image-view").hide();
              $(".remove-thumb").show();
          }
          uploadedFile.readAsDataURL(input.files[0]);
      }
  }
  $("#profile-image-upload").on('change', function () {
      proPicURL(this);
  });
  $(".remove-thumb").on('click', function () {
      $(".user--profile .thumb").html(prevImg);
      $(".user--profile .thumb").removeClass('image-loaded');
      $(".image-view").show();
      $(this).hide();
  });
  $('#check').on('change', function(){
    if($(this).is(':checked')){
        $('#checkval').val(1);
        $('.online-class').removeClass('d-none');
        $('.offline-class').addClass('d-none');
        $('.service').removeClass('col-sm-6');
        $('.service').addClass('col-sm-12');

    }else{
        $('#checkval').val(0);
        $('.online-class').addClass('d-none');
        $('.offline-class').removeClass('d-none');
        $('.service').removeClass('col-sm-12');
        $('.service').addClass('col-sm-6');
    }
 });

</script>

@endpush