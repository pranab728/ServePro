<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>{{$gs->title}}</title>
    <link rel="stylesheet" href="{{asset('assets/user/css/bootstrap.min.css')}}" />
	<link rel="stylesheet" href="{{ asset('assets/user/css/summernote-lite.min.css') }}">
    <link rel="stylesheet" href="{{asset('assets/user/css/animate.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/user/css/all.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/user/css/lightbox.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/user/css/odometer.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/user/css/owl.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/user/css/main.css')}}" />
	<link rel="stylesheet" href="{{asset('assets/user/css/toastr.min.css')}}">
	
    <link rel="shortcut icon" href="{{asset('assets/images/'.$gs->favicon)}}">

</head>

<body>
    <!-- Overlayer -->
    <span class="toTopBtn">
        <i class="fas fa-angle-up"></i>
    </span>
    <div class="overlayer"></div>
    <div class="loader"></div>
    <!-- Overlayer -->

    <!-- User Dashboard -->
    <main class="dashboard-section">

		@if (Auth::user()->is_seller == 0)
		@include('includes.buyer.sidebar')
		@else	
		@include('includes.user.sidebar')
		@endif
		

        <article class="main--content">
			@include('includes.user.topbar')
            <div class="dashborad--content">
				@yield('contents')
				@include('includes.user.footer')
            </div>
        </article>
    </main>
    <!-- User Dashboard -->

	<script>
		let mainurl = '{{ url('/') }}';
	</script>
    <script src="{{asset('assets/user/js/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('assets/user/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/user/js/viewport.jquery.js')}}"></script>
    <script src="{{asset('assets/user/js/odometer.min.js')}}"></script>
    <script src="{{asset('assets/user/js/lightbox.min.js')}}"></script>
    <script src="{{asset('assets/user/js/owl.min.js')}}"></script>
	<script src="{{asset('assets/user/js/notify.js')}}"></script>
	<script src="{{ asset('assets/user/js/summernote-lite.min.js') }}"></script>
    <script src="{{asset('assets/user/js/main.js')}}"></script>
	<script src="{{asset('assets/user/js/toastr.min.js')}}"></script>
    <script src="{{asset('assets/user/js/custom.js')}}"></script>
	
	<script type="text/javascript">
		"use strict";
        var mercadogateway = null;

	
         @if(count($errors) > 0)
            @foreach($errors->all() as $error)
                toastr.error("{{ $error }}");
            @endforeach
        @endif
         
        @if(Session::has('success'))
            toastr.success('{{ Session::get('success') }}');
        @endif                          
    


		@if(Session::has('message'))
		toastr.options =
		{
			"closeButton" : true,
			"progressBar" : true
		}
			toastr.success("{{ session('message') }}");
		@endif

		@if(Session::has('error'))
		toastr.options =
		{
			"closeButton" : true,
			"progressBar" : true
		}
			toastr.error("{{ session('error') }}");
		@endif

		@if(Session::has('info'))
		toastr.options =
		{
			"closeButton" : true,
			"progressBar" : true
		}
			toastr.info("{{ session('info') }}");
		@endif

		@if(Session::has('warning'))
		toastr.options =
		{
			"closeButton" : true,
			"progressBar" : true
		}
			toastr.warning("{{ session('warning') }}");
		@endif
	</script>

    @stack('js')
</body>

</html>


