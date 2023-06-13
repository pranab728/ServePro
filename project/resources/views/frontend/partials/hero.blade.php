<section class="hero-area-three" style="background-image:url({{ asset('assets/images/'.$ps->hero_photo) }})">
    <div class="container-fluid">
        <div class="hero-wrapper">
            <div class="hero-content">
                <span>{{ $ps->hero_title }}</span>
                <h1>{{ $ps->hero_subtitle }}</h1>
               
                <div class="find-service">
                    <div class="location-search">
                        <div class="location-btn">
                            
                            <select class="loc-select">
                                @foreach ($countries as $country)
                                <option value="{{ $country->name }}">{{ $country->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="location-form">
                            <form action="{{ route('front.servicesearch') }}" method="get">
                                <input type="text" name="search" placeholder="Find Your Services Here" value="" required>
                                <button type="submit"><i class="bi bi-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="suggest">
                        <span>@lang('Suggest For You'):</span>
                        <ul class="suggest-list">
                            @foreach ($categories->take(4) as $data)
                            <li><a href="{{ route('front.servicecategory',$data->slug) }}">{{ $data->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>