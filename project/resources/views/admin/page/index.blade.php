@extends('layouts.admin')

@section('content')

<div class="card">
    <div class="d-sm-flex align-items-center py-3 justify-content-between">
    <h5 class=" mb-0 text-gray-800 pl-3">{{ __('Other Pages') }}</h5>
    <ol class="breadcrumb py-0 m-0">
        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">{{ __('Menu Page Settings') }}</a></li>
        <li class="breadcrumb-item"><a href="{{route('admin.page.index')}}">{{ __('Other Pages') }}</a></li>
    </ol>
    </div>
</div>


<!-- Row -->
<div class="row mt-3">
  <!-- Datatables -->
  <div class="col-lg-12">

	@include('includes.admin.form-success')

	<div class="card mb-4">
	  <div class="table-responsive p-3">
		<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
		  <thead class="thead-light">
			<tr>
			  <th>{{ __('Name') }}</th>
			  <th>{{ __('Status') }}</th>
			  <th>{{ __('Options') }}</th>
			</tr>
		  </thead>
		</table>
	  </div>
	</div>
  </div>
  <!-- DataTable with Hover -->

</div>
<!--Row-->

@includeIf('partials.admin.status')
@includeIf('partials.admin.delete')
@endsection



@section('scripts')

    <script type="text/javascript">
	"use strict";

		var table = $('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               searching: true,
               ajax: '{{ route('admin.page.datatables') }}',
               columns: [
                        { data: 'title', name: 'title' },
                        { data: 'status', name: 'status' },
            			{ data: 'action', searchable: false, orderable: false }

                     ],
               language: {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },

            });

			$(function() {
            $(".btn-area").append('<div class="col-sm-12 col-md-4 text-right">'+
                '<a class="btn btn-primary" href="{{route('admin.page.create')}}">'+
            '<i class="fas fa-plus"></i> Add New Page'+
            '</a>'+
            '</div>');
        });

    </script>
@endsection