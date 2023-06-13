@extends('layouts.front')

@push('css')

@endpush

@section('content')
	
<!-- Start breadcrumbs section -->
<section class="breadcrumbs" style="background-image: url({{ asset('assets/images/'.$gs->breadcumb_banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-wrapper">
                    <h2>@lang('All Services')</h2>
                    <span><a href="{{ route('front.index') }}">@lang('Home')</a><i class="bi bi-chevron-right"></i>@lang('All Services')</span>
                    <div class="arrow-down">
                        <a href="#down"><i class="bi bi-chevron-down"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End breadcrumbs section -->




<!-- Start services-area section -->
<section id="down" class="services-area sec-m-top">
    <div class="container">
        <div class="service-selection wow animate fadeInUp" data-wow-delay="1800ms" data-wow-duration="1500ms">
            <form action="#" method="post">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="service-loc-selection">
                            <i><img src="assets/images/location.svg" alt=""></i>
                            <select class="loc-select form-select form-select-lg" id="search_item_country">
                                <option value="">@lang('Select Country')</option>
                                @foreach ($countries as $country)
                                    <option value="{{ $country->id }}" {{ isset(request()->input()['country']) && request()->input()['country'] == $country->id ? 'selected' : ''}}>{{ $country->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="card py-4 px-3  ">
                            <div class="row d-flex">
                                <div class="col-sm-12 col-md-6 col-lg-3 mb-md-2 mb-sm-2">
                                    <div class="form-group">
                                        <select class="form-select form-select-lg" aria-label="Default select example" id="search_item_city">
                                            <option selected>@lang('Select City')</option>
                                            @foreach ($cities as $city)
                                                <option value="{{ $city->id }}" {{ isset(request()->input()['city']) && request()->input()['city'] == $city->id ? 'selected' : ''}} data-country="{{ $city->country_id }}">{{ $city->title }}</option>
                                            @endforeach
                                            
                                          </select>
                                    </div>
                                </div>

                                <div class="col-sm-12 col-md-6 col-lg-3 mb-md-2 mb-sm-2">
                                    <div class="form-group">
                                        <select class="form-select form-select-lg" aria-label="Default select example" id="search_item_area">
                                            <option selected>@lang('Select Area')</option>
                                            @foreach ($areas as $area)
                                                <option value="{{ $area->id }}" {{ isset(request()->input()['area']) && request()->input()['area'] == $area->id ? 'selected' : ''}} data-city="{{ $area->city_id }}">{{ $area->title }}</option>
                                            @endforeach
                                            
                                          </select>
                                    </div>
                                </div>

                               

                                <div class="col-sm-12 col-md-6 col-lg-3 mb-md-2 mb-sm-2">
                                    <div class="form-group">
                                        <select class="form-select form-select-lg " aria-label="Default select example" id="search_cat_item">
                                            <option selected>@lang('Category')</option>
                                            @foreach ($categories as $category)
                                                <option value="{{ $category->id }}" {{ isset(request()->input()['category']) && request()->input()['category'] == $category->id ? 'selected' : ''}}>{{ $category->title }}</option>
                                            @endforeach
                                            
                                          </select>
                                    </div>
                                </div> 

                                <div class="col-sm-12 col-md-6 col-lg-3 mb-md-2 mb-sm-2">
                                    <div class="form-group">
                                        <select class="form-select form-select-lg " aria-label="Default select example" id="search_subcat_item">
                                            <option selected>@lang('Subcategory')</option>
                                            @foreach ($subcategories as $subcategory)
                                                <option value="{{ $subcategory->id }}" {{ isset(request()->input()['subcategory']) && request()->input()['subcategory'] == $subcategory->id ? 'selected' : ''}} data-category="{{ $subcategory->category_id }}">{{ $category->title }}</option>
                                            @endforeach
                                            
                                          </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div id="show_search_items">
            @include('load.service')
        </div>
        
        
    </div>
</section>
<!-- End services-area section -->


<form id="search_item" class="d-none" action="{{route('front.allservices')}}" method="GET">

    <input type="text" name="country" id="country" value="{{request()->input('country')}}">
    <input type="text" name="city" id="city" value="{{request()->input('city')}}">
    <input type="text" name="area" id="area" value="{{request()->input('area')}}">
    <input type="text" name="category" id="category" value="{{request()->input('category')}}">
    <input type="text" name="subcategory" id="subcategory" value="{{request()->input('subcategory')}}">

    <button type="submit" id="search_btn_submit" class="d-none"></button>
</form>


@endsection

@push('js')
<script type="text/javascript">
    "use strict";

    $(document).ready(function(){
        var optgroups = $('#search_item_city > option');
        $('#search_item_country').on('change', function(){
           var country= $('#search_item_country').val();
           $('#search_item #country').val(country);
            $('#search_btn_submit').click();

        var options = optgroups.filter('[data-country="'+country+'"]');
        $('#search_item_city').html( '<option value="">@lang('Select City')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );
        });

        var areaoptgroups = $('#search_item_area > option');
        $('#search_item_city').on('change', function(){
           var city= $('#search_item_city').val();
           $('#search_item #city').val(city);
            $('#search_btn_submit').click();

        var options = areaoptgroups.filter('[data-city="'+city+'"]');
        $('#search_item_area').html( '<option value="">@lang('Select Area')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );
        });


        var subcategoryoptgroups = $('#search_subcat_item > option');

        $('#search_cat_item').on('change', function(){
           var category= $('#search_cat_item').val();
           $('#search_item #category').val(category);
            $('#search_btn_submit').click();

        var options = subcategoryoptgroups.filter('[data-category="'+category+'"]');
        $('#search_subcat_item').html( '<option value="">@lang('Subcategory')</option>' + options.map(function(){
            return '<option value="'+this.value+'">'+this.text+'</option>';
        }).get().join('') );
        });


        $('#search_item_city').on('change', function(){
            var city= $('#search_item_city').val();
            $('#search_item #city').val(city);
            $('#search_btn_submit').click();
        });

        $('#search_item_area').on('change', function(){
            var area= $('#search_item_area').val();
            $('#search_item #area').val(area);
            $('#search_btn_submit').click();
        });

        $('#search_orderby_item').on('change', function(){
            var sortby= $('#search_orderby_item').val();
            $('#search_item #sortby').val(sortby);
            $('#search_btn_submit').click();
        });

        $('#search_cat_item').on('change', function(){
            var category= $('#search_cat_item').val();
            $('#search_item #category').val(category);
            $('#search_btn_submit').click();
        });

        $('#search_subcat_item').on('change', function(){
            var subcategory= $('#search_subcat_item').val();
            $('#search_item #subcategory').val(subcategory);
            $('#search_btn_submit').click();
        });

        $(document).on('submit','#search_item',function(e){
			e.preventDefault();
			$.ajax({
				method: 'GET',
				url: $(this).attr('action'),
				data: $(this).serialize(),
				success: function (data) {
					$('#show_search_items').html(data);
				}
			});
		})


    });

	
</script>
@endpush

