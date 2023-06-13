<div class="header-logo">
    <a href="{{ route('front.index') }}"><img src="{{asset('assets/images/'.$gs->logo)}}" alt=""></a>
</div>
<div class="main-menu">
    <nav class="main-nav">
        <div class="mobile-menu-logo">
            <a href="{{ route('front.index') }}"><img src="{{asset('assets/images/'.$gs->logo)}}" alt=""></a>
            <div class="remove">
                <i class="bi bi-plus-lg"></i>
            </div>
        </div>
        <ul>
            @foreach(json_decode($gs->menu,true) as $key => $menue)
                <li><a href="{{ url($menue['href']) }}" target="{{ $menue['target'] == 'blank' ? '_blank' : '_self' }}">{{ $menue['title'] }}</a></li>
            @endforeach

            @if ($pages->count()>0)
            <li class="has-child">
                <a href="#">@lang('Pages')</a>
                <i class="bi bi-chevron-down"></i>
                <ul class="sub-menu">
                    @foreach ($pages as $page)
                    <li><a href="{{ route('front.page',$page->slug) }}">{{ $page->title }}</a></li>
                    @endforeach
                </ul>
            </li>
            @endif
            


        </ul>

        <div class="my-account">
            @auth
                <a href="{{ route('user.dashboard') }}" >@lang('Dashboard')</a>
            @endauth
            @guest
                <a href="{{ route('user.login') }}" >@lang('Login Now')</a>
            @endguest
        </div>

    </nav>
</div>
<div class="header-right">

    <div class="phone">
      
            <div class="change-language mx-2">
                <select name="language" class="language selectors nice language-bar form-control">
                    @foreach(DB::table('languages')->get() as $language)
                        <option value="{{route('front.language',$language->id)}}" {{ Session::has('language') ? ( Session::get('language') == $language->id ? 'selected' : '' ) : (DB::table('languages')->where('is_default','=',1)->first()->id == $language->id ? 'selected' : '') }} >
                            {{$language->language}}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="change-language ">
                <select name="currency" class="currency selectors nice language-bar form-control">
                    @foreach(DB::table('currencies')->get() as $currency)
                        <option value="{{route('front.currency',$currency->id)}}" {{ Session::has('currency') ? ( Session::get('currency') == $currency->id ? 'selected' : '' ) : (DB::table('currencies')->where('is_default','=',1)->first()->id == $currency->id ? 'selected' : '') }}>
                            {{$currency->name}}
                        </option>
                    @endforeach
                </select>
            </div>
     
    </div>

    <div class="account-btn">
        @auth
            <a href="{{ route('user.dashboard') }}" >@lang('Dashboard')</a>
        @endauth
        @guest
            <a href="{{ route('user.login') }}" >@lang('Login Now')</a>
        @endguest
    </div>
    <div class="mobile-menu">
        <a href="javascript:void(0)" class="cross-btn">
            <span class="cross-top"></span>
            <span class="cross-middle"></span>
            <span class="cross-bottom"></span>
        </a>
    </div>
</div>