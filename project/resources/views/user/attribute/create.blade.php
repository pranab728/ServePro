
@extends('layouts.user')

@push('css')
    
@endpush

@section('contents')
<div class="breadcrumb-area">
    <h3 class="title">@lang('Add Attributes')</h3>
    <ul class="breadcrumb">

        <li>
            <a href="{{ route('user.dashboard') }}">@lang('Dashboard')</a>
        </li>
        <li>
            @lang('Add Attributes')
        </li>
    </ul>
</div>
<div class="dashboard--content-item">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-8 col-xl-10 col-xxl-10">
            <div class="profile--card">
                @includeIf('includes.flash')
                <form id="request-form" action="{{ route('user.store.attribute',$service->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <h5>{{ $service->is_service_online== 1 ? 'Online': 'Offline' }}</h5>

                    {{-- include package section start --}}

                    @if ($service->is_service_online == 0)

                    <input type="hidden" name="is_service_online" value="0">
                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('What is Included In This Package')</h4>
    
                        </div>
                        <div class="input my-4 row">
                            <div class="col-md-4">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" name="include_service_title[]" type="text" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label for="#price">@lang('Price')</label>
                                <input id="price" name="include_service_price[]" type="text" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label for="#duration">@lang('Qunatity')</label>
                                <input id="quantity" name="include_service_quantity[]" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="extra" id="extra">
                        </div>
                        <p id="includ-add" class="text-danger cmn-design"> <i class="fas fa-plus-circle "></i> @lang('Add more')</p>
                    </div>
                    @else
                    
                    <input type="hidden" name="is_service_online" value="1">
                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('What is Included In This Package')</h4>
    
                        </div>
                        <div class="input my-4 row">
                            <div class="col-md-12">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" name="include_service_title[]" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="online" id="online">
                        </div>
                        <p id="online-add" class="text-danger cmn-design"><i class="fas fa-plus-circle "></i>@lang('Add more')</p>
                    </div>
                    @endif

                    {{-- include package section end  --}}



                     {{-- Additional package section start --}}
                     <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('Additional Packages')</h4>
                        </div>
                        <div class="input my-4 row">
                            <div class="col-md-4">
                                <label for="#title">@lang('Title')</label>
                                <input id="title" name="additional_service_title[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#price">@lang('Price')</label>
                                <input id="price" name="additional_service_price[]" type="text" class="form-control" >
                            </div>
                            <div class="col-md-4">
                                <label for="#duration">@lang('Qunatity')</label>
                                <input id="quantity" name="additional_service_quantity[]" type="text" class="form-control" >
                            </div>
                        </div>
                        <div class="extra" id="additional">
                        </div>
                        <p id="additional-add" class="text-danger cmn-design"><i class="fas fa-plus-circle"></i> @lang('Add more')</p>
                    </div>


                    {{-- Benefits of the package --}}

                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('Benefits of the package')</h4>
    
                        </div>
                        <div class="input my-4 row">
                            <div class="col-md-12">

                                <input id="title" name="benefits[]" type="text" class="form-control" placeholder="Type Here" >
                            </div>

                        </div>
                        <div class="extra" id="benefits">
                        </div>
                        <p id="benefits-add" class="text-danger cmn-design"><i class="fas fa-plus-circle "></i> @lang('Add more')</p>
                    </div>


                    {{-- Faq of the package --}}

                    <div class="included-package">
                        <div class=" mt-5">
                            <h4>@lang('Faq of the package')</h4>
    
                        </div>
                        <div class="input my-4 row">
                            <div class="col-md-6">

                                <input id="title" name="faq_title[]" type="text" class="form-control" placeholder="Type Here" >
                            </div>

                            <div class="col-md-6">
                                <textarea class="form-control nic-edit" name="faq_detail[]" id="" cols="30" rows="5"></textarea>
                            </div>

                        </div>
                        <div class="extra" id="faq">
                        </div>
                        <p id="faq-add" class="text-danger cmn-design"><i class="fas fa-plus-circle "></i> @lang('Add more')</p>
                    </div>

                    <div class="submit-btn my-3">
                        <button class="btn add-btn" type="submit">@lang('Submit')</button>
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
    $(document).ready(function(){
        $('#includ-add').click(function(){
            $('#extra').append( 
                `<div class="input my-4 row">
                    <div class="col-md-4">
                        <label for="#title">Title</label>
                        <input id="title" name="include_service_title[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-4">
                        <label for="#price">Price</label>
                        <input id="price" name="include_service_price[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-3">
                        <label for="#duration">Qunatity</label>
                        <input id="quantity" name="include_service_quantity[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-1">
                        
                        <a href="#" class="remove_field btn btn-danger btn-sm cmn-remove"><i class="fa fa-trash"></i></a>
                    </div>
                </div>`
             )

        })

        $('#extra').on('click', '.remove_field', function(e){
            e.preventDefault();
            $(this).parent().parent('div').remove();
        })

        // include service package end

        // Additional packgae start
        $('#additional-add').click(function(){
            $('#additional').append( 
                `<div class="input my-4 row">
                    <div class="col-md-4">
                        <label for="#title">Title</label>
                        <input id="title" name="additional_service_title[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-4">
                        <label for="#price">Price</label>
                        <input id="price" name="additional_service_price[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-3">
                        <label for="#duration">Qunatity</label>
                        <input id="quantity" name="additional_service_quantity[]" type="text" class="form-control" >
                    </div>
                    <div class="col-md-1">
                        <a href="#" class="add-remove cmn-remove btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                    </div>
                </div>`
             )

        })

        $('#additional').on('click', '.add-remove', function(e){
            e.preventDefault();
            $(this).parent().parent('div').remove();
        })

        // Additional packgae end

        // Benefits of the package start
        $('#benefits-add').click(function(){
            $('#benefits').append( 
                `<div class="input my-4 row">
                    <div class="col-md-11">

                        <input id="title" name="benefits[]" type="text" class="form-control" placeholder="Type Here" >
                    </div>
                    <div class="col-md-1">
                        <a href="#" class="benefit-remove cmn-remove2 btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                    </div>
                </div>`
             )

        })

        $('#benefits').on('click', '.benefit-remove', function(e){
            e.preventDefault();
            $(this).parent().parent('div').remove();
        })

        // Benefits of the package end

        $('#online-add').click(function(){
            $('#online').append( 
                `<div class="input my-4 row">
                    <div class="col-md-11">
                        <label for="#title">Title</label>
                        <input id="title" name="include_service_title[]" type="text" class="form-control" >
                    </div>
                   
                    <div class="col-md-1">
                        <a href="#" class="online-remove cmn-remove2 btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                    </div>
                </div>`
             )
        })

        $('#online').on('click', '.online-remove', function(e){
            e.preventDefault();
            $(this).parent().parent('div').remove();
        })


        // Faq of the package start

        $('#faq-add').click(function(){
            $('#faq').append( 
                `<div class="input my-4 row">
                    <div class="col-md-5">

                        <input id="title" name="faq_title[]" type="text" class="form-control" placeholder="Type Here" >
                    </div>

                    <div class="col-md-6">
                        <textarea class="form-control nic-edit"  name="faq_detail[]" id="" cols="30" rows="10"></textarea>
                    </div>
                    <div class="col-md-1">
                        <a href="#" class="faq-remove cmn-remove btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                    </div>
                </div>`
             )

        })

        $('#faq').on('click', '.faq-remove', function(e){
            e.preventDefault();
            $(this).parent().parent('div').remove();
        })

    })
</script>


@endpush