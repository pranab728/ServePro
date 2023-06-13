<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="GeniusOcean">
    <title>{{$gs->title}}</title>
    <link rel="stylesheet" href="{{asset('assets/front/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/bootstrap-icons.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/fontawesome.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/all.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/swiper-bundle.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/slick-theme.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/slick.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/nice-select.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/magnific-popup.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/animate.min.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/style.css')}}" />
    <link rel="stylesheet" href="{{asset('assets/front/css/toastr.min.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/front/css/styles.php?color='.str_replace('#','',$gs->colors)) }}">
    @if ($default_font->font_value)
        <link href="https://fonts.googleapis.com/css?family={{ $default_font->font_value }}&display=swap" rel="stylesheet">
    @else
        <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    @endif

    @if ($default_font->font_family)
        <link rel="stylesheet" id="colorr" href="{{ asset('assets/front/css/font.php?font_familly='.$default_font->font_family) }}">
    @else
        <link rel="stylesheet" id="colorr" href="{{ asset('assets/front/css/font.php?font_familly='."Open Sans") }}">
    @endif

    <link rel="shortcut icon" href="{{asset('assets/images/'.$gs->favicon)}}">
    @stack('css')

    @if(!empty($seo->google_analytics))
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
				dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', '{{ $seo->google_analytics }}');
	</script>
	@endif
</head>

<body>
    <!-- Overlayer Loader -->
   <!-- Overlayer -->
   
    <div id="preloader" data-image="{{ asset('assets/images/'.$gs->loader) }}"></div>
   
<!-- Overlayer -->
    <!-- Overlayer -->

    <!-- Header -->
    <header class="{{ Route::is('front.index') ? 'header-3': 'header-2' }} sticky_top">
       
        @includeIf('partials.front.nav')
    </header>
    <!-- Header -->

    @yield('content')

    <!-- Footer -->
    @include('partials.front.footer')
    <!-- Footer -->

    @include('cookieConsent::index')



    <script src="{{asset('assets/front/js/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('assets/front/js/popper.min.js')}}"></script>
    <script src="{{asset('assets/front/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/front/js/swiper-bundle.min.js')}}"></script>
    <script src="{{asset('assets/front/js/slick.js')}}"></script>
    <script src="{{asset('assets/front/js/jquery.nice-select.min.js')}}"></script>
    <script src="{{asset('assets/front/js/waypoints.min.js')}}"></script>
    <script src="{{asset('assets/front/js/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('assets/front/js/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{asset('assets/front/js/toastr.min.js')}}"></script>
    <script src="{{asset('assets/front/js/notify.js')}}"></script>
    <script src="{{asset('assets/front/js/wow.min.js')}}"></script>
    <script src="{{asset('assets/front/js/anime.min.js')}}"></script>
    <script src="{{asset('assets/front/js/custom.js')}}"></script>

    @php
     echo Toastr::message();
    @endphp

<script type="text/javascript">
"use strict";
    
		let mainurl = '{{ url('/') }}';
        let tawkto = '{{ $gs->is_talkto }}';
	</script>


        <script type="text/javascript">
        "use strict";
            if(tawkto == 1){
                var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
                (function(){
                    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
                    s1.async=true;
                    s1.src='https://embed.tawk.to/{{ $gs->talkto}}/default';
                    s1.charset='UTF-8';
                    s1.setAttribute('crossorigin','*');
                    s0.parentNode.insertBefore(s1,s0);
                })();
            }
        </script>
    <script>
       


    </script>

    @stack('js')
</body>

</html>
