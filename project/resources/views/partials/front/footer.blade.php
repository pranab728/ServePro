 <!-- Start footer section -->
 <footer class="footer-1 sec-m-top">
    <img src="{{ asset('assets/front/footer-left-shape.png') }}" alt="" class="line-shape">
    <div class="container">
        <div class="footer-top">
            <div class="row gy-5">
                <div class="col-md-6 col-lg-5">
                    <div class="footer-widget with-logo">
                        <div class="footer-logo">
                            <a href="index.html"><img src="{{asset('assets/images/'.$gs->logo)}}" alt=""></a>
                        </div>
                        <p>{{ $gs->footer }}</p>
                        <div class="request-btn">
                            <a href="{{ route('front.allservices') }}">@lang('Request a Service')</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-2">
                    <div class="footer-widget">
                        <h4>@lang('Explore On')</h4>

                        <ul class="footer-menu">
                            @foreach(json_decode($gs->menu,true) as $key => $menue)
                                <li><a href="{{ url($menue['href']) }}" target="{{ $menue['target'] == 'blank' ? '_blank' : '_self' }}">{{ $menue['title'] }}</a></li>
                            @endforeach
                        </ul>

                    </div>
                </div>
                <div class="col-md-6 col-lg-2">
                    <div class="footer-widget">
                        <h4>@lang('Categories')</h4>
                        <ul class="footer-menu">
                             @foreach ($categories->take(5) as $data)
                            <li><a href="{{ route('front.servicecategory',$data->slug) }}">{{ $data->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="footer-widget">
                        <h4>Contacts</h4>
                        <div class="information">
                            <div class="info">
                                <div class="icon">
                                    <i class="fas fa-phone-alt"></i>
                                </div>
                                <div class="desc">
                                    <a href="tel:01761111456">{{ $ps->phone }}</a>
                                    <a href="tel:01761111555">{{ $ps->fax }}</a>
                                </div>
                            </div>
                            <div class="info">
                                <div class="icon">
                                    <i class="far fa-envelope"></i>
                                </div>
                                <div class="desc">
                                    <a href="mailto:info@example.com">{{ $ps->contact_email }}</a>
                                    <a href="mailto:info@support.com">{{ $ps->email }}</a>
                                </div>
                            </div>
                            <div class="info">
                                <div class="icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <div class="desc">
                                    <p>{{ strip_tags($ps->street) }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="copy-right">
                        <span>
                            @php
                            echo $gs->copyright;
                        @endphp
                        </span>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="footer-social-media">
                        <ul>
                            <li><a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="https://www.pinterest.com"><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End footer section -->
    