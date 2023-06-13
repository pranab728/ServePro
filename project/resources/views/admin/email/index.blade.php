@extends('layouts.admin')

@section('content')

<div class="content-area">
  <div class="card">
    <div class="d-sm-flex align-items-center justify-content-between">
    <h5 class=" mb-0 text-gray-800 pl-3">{{ __('Email Templates') }}</h5>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></li>
        <li class="breadcrumb-item"><a href="{{ route('admin.mail.index') }}">{{ __('Email Templates') }}</a></li>
    </ol>
    </div>
  </div>
</div>

    <div class="row mt-3">
      <div class="col-lg-12">
        @include('includes.admin.form-success')
        <div class="card mb-4">
          <div class="table-responsive p-3">
            <table id="example" class="table table-hover dt-responsive" cellspacing="0" width="100%">
              <thead class="thead-light">
                <tr>
                  <th>{{ __('Email Type') }}</th>
                  <th>{{ __('Email Subject') }}</th>
                  <th>{{ __('Options') }}</th>
                </tr>
              </thead>
            </table>
          </div>
        </div>
      </div>
    </div>


    @includeIf('partials.admin.status')
    @includeIf('partials.admin.delete')

@endsection



@section('scripts')

    <script type="text/javascript">
	"use strict";

    var table = $('#example').DataTable({
               ordering: false,
               processing: true,
               serverSide: true,
               searching: true,
               ajax: '{{ route('admin.mail.datatables') }}',
               columns: [
                        { data: 'email_type', name: 'email_type' },
                        { data: 'email_subject', name: 'email_subject' },
                        { data: 'action', searchable: false, orderable: false }

                     ],
               language: {
                  processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                }
            });



    </script>
@endsection
