@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- Start hero-area-three section -->
@if (in_array('Hero', $home_modules))  

     @include('frontend.partials.hero')
     
@endif

 <!-- End hero-area-three section -->

 @if(in_array('Category', $home_modules))
    
     @include('frontend.partials.category')
    
 @endif

@if(in_array('Best service', $home_modules))   
    @include('frontend.partials.best-service')
@endif


@if(in_array('Popular Service', $home_modules))   
    @include('frontend.partials.popular_service')
@endif

@if(in_array('Why Choose', $home_modules))   
    @include('frontend.partials.why_choose_us')
@endif

@if(in_array('Featured Service', $home_modules))   
    @include('frontend.partials.featured_service')
@endif

@if(in_array('Partner', $home_modules))   
    @include('frontend.partials.partner')
@endif

@if (in_array('Testimonials', $home_modules))  
     @include('frontend.partials.testimonial')
@endif

@if (in_array('How To Works', $home_modules))  
     @include('frontend.partials.how_it_works')
@endif


@if (in_array('Blogs', $home_modules))  
     @include('frontend.partials.blog')
@endif







@endsection

@push('js')

@endpush
