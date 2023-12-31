@extends('layouts.admin')

@section('content')
<div class="card">
  <div class="d-sm-flex align-items-center justify-content-between">
  <h5 class=" mb-0 text-gray-800 pl-3">{{ __('Add New Post') }} <a class="btn btn-primary btn-rounded btn-sm" href="{{route('admin.blog.index')}}"><i class="fas fa-arrow-left"></i> {{ __('Back') }}</a></h5>
  <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></li>
      <li class="breadcrumb-item"><a href="javascript:;">{{ __('Blog') }}</a></li>
      <li class="breadcrumb-item"><a href="{{route('admin.blog.index')}}">{{ __('Post') }}</a></li>
      <li class="breadcrumb-item"><a href="{{route('admin.blog.create')}}">{{ __('Add New Post') }}</a></li>
  </ol>
  </div>
</div>

<div class="row justify-content-center mt-3">
  <div class="col-md-10">
    <div class="card mb-4">
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">{{ __('Add New Post Form') }}</h6>
      </div>

      <div class="card-body">
        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
        <form class="geniusform" action="{{route('admin.blog.create')}}" method="POST" enctype="multipart/form-data">

            @include('includes.admin.form-both')

            {{ csrf_field() }}

          <div class="form-group">
            <label for="title">{{ __('Title') }}</label>
            <input type="text" class="form-control" id="title" name="title"  placeholder="{{ __('Enter Title') }}" value="" required>
          </div>

          <div class="form-group">
            <label for="title">{{ __('Slug') }}</label>
            <input type="text" class="form-control" id="slug" name="slug"  placeholder="{{ __('Enter Slug') }}" value="" required>
          </div>

          <div class="form-group">
            <label for="inp-name">{{ __('Category') }}</label>
            <select class="form-control mb-3" name="category_id">
              <option value="" selected>{{__('Select Category')}}</option>
                @foreach ($cats as $cat)
                <option value="{{$cat->id}}">{{$cat->name}}</option>
                @endforeach
            </select>
          </div>

          <div class="form-group">
              <label>{{ __('Set Picture') }} </label>
              <div class="wrapper-image-preview">
                  <div class="box">
                      <div class="back-preview-image" style="background-image: url({{ asset('assets/images/placeholder.jpg') }});"></div>
                      <div class="upload-options">
                          <label class="img-upload-label" for="img-upload"> <i class="fas fa-camera"></i> {{ __('Upload Picture') }} </label>
                          <input id="img-upload" type="file" class="image-upload" name="photo" accept="image/*">
                      </div>
                  </div>
              </div>
          </div>

          <div class="form-group">
              <label for="details">{{ __('Description ') }}</label>
              <textarea class="form-control summernote" id="details" name="details"  rows="3" placeholder="{{__('Description')}}"></textarea>
          </div>

          <div class="form-group">
              <label for="tags">{{ __('Tags') }}</label>
              <input type="text" class="mytags" name="tags" placeholder="{{ __('Tags') }}">
          </div>


          <div class="form-group">
              <label for="source">{{ __('Source') }}</label>
              <input type="text" class="form-control" id="source" name="source"  placeholder="{{ __('Source') }}" value="" required>
          </div>

          <button type="submit" id="submit-btn" class="btn btn-primary w-100">{{ __('Submit') }}</button>
        </form>
      </div>
    </div>
  </div>
</div>

@endsection

@section('scripts')

<script type="text/javascript">
  'use strict';
  $('#title').on('keyup', function() {
    var title = $(this).val();
    var slug = title.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-').toLowerCase();
    $('#slug').val(slug);
  });
</script>


@endsection
