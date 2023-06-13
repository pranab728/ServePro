@extends('layouts.user')

@push('css')

@endpush

@section('contents')

<div class="breadcrumb-area">
  <h3 class="title">@lang('Dashboard')</h3>
  <ul class="breadcrumb">
      <li>
          <a href="{{ route('user.dashboard') }}">@lang('Dashboard')</a>
      </li>
      <li>
          @lang('Dashboard')
      </li>
  </ul>
</div>
<div class="dashboard--content-item">
    @if ($gs->kyc)
        @if (auth()->user()->kyc_info == NULL && auth()->user()->kyc_status == 0)
        <div class="row mb-3">
        <div class="col-md-12">
            <div class="card default--card">
                <div class="card-body">
                        <div class="form-group w-100 d-flex flex-wrap align-items-center justify-content-evenly justify-content-sm-between">
                        <h3 class="my-1 text-center text-sm-start">{{ __('You have a information to submit for kyc verification.') }}</h3>
                        <div class="my-1">
                            <a href="{{ route('user.kyc.form') }}" class="btn btn-warning">@lang('Submit')</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        @elseif(auth()->user()->kyc_status == 2)
        <div class="row mb-3">
            <div class="col-md-12">
                <div class="card default--card">
                    <div class="card-body">
                        <div class="form-group w-100 d-flex flex-wrap align-items-center justify-content-evenly justify-content-sm-between">
                        <h3 class="my-1 text-center text-sm-start">{{ __('Your submitted kyc informations rejected.') }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @elseif(auth()->user()->kyc_status != 1)
        <div class="row mb-3">
            <div class="col-md-12">
                <div class="card default--card">
                    <div class="card-body">
                        <div class="form-group w-100 d-flex flex-wrap align-items-center justify-content-evenly justify-content-sm-between">
                        <h3 class="my-1 text-center text-sm-start">{{ __('Your submitted informations under reviewing.') }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @else
        <div></div>
        @endif
    @endif
  <div class="dashboard--wrapper">
        <div class="dashboard--width">
          <div class="dashboard-card h-100">
              <div class="dashboard-card__header">
                  <div class="dashboard-card__header__icon">
                      <img src="{{asset('assets/images/gross.png')}}" alt="wallet">
                  </div>
                  <div class="dashboard-card__header__cont">
                      <h6 class="name">@lang('Main Balance')</h6>
                      <div class="balance">{{ showNameAmount(auth()->user()->balance) }}</div>
                  </div>
              </div>
          </div>
       </div>

        <div class="dashboard--width">
            <div class="dashboard-card h-100">
                <div class="dashboard-card__header">
                    <div class="dashboard-card__header__icon">
                        <img src="{{asset('assets/images/service.png')}}" alt="wallet">
                    </div>
                    <div class="dashboard-card__header__cont">
                        <h6 class="name">@lang('Total Services')</h6>
                        <div class="balance">{{ auth()->user()->services->count() }}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="dashboard--width">
            <div class="dashboard-card h-100">
                <div class="dashboard-card__header">
                    <div class="dashboard-card__header__icon">
                        <img src="{{asset('assets/images/job.png')}}" alt="wallet">
                    </div>
                    <div class="dashboard-card__header__cont">
                        <h6 class="name">@lang('Applied Jobs')</h6>
                        <div class="balance">{{ auth()->user()->jobrequests->count() }}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="dashboard--width">
            <div class="dashboard-card h-100">
                <div class="dashboard-card__header">
                    <div class="dashboard-card__header__icon">
                        <img src="{{asset('assets/images/cash-withdrawal.png')}}" alt="wallet">
                    </div>
                    <div class="dashboard-card__header__cont">
                        <h6 class="name">@lang('Total Order')</h6>
                        <div class="balance">{{ auth()->user()->serviceorders->count()}}</div>
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>
<div class="dashboard--content-item">
	  <div class="table-responsive table--mobile-lg">
		  <table class="table bg--body">
			  <thead>
				  <tr>
					<th>@lang('No')</th>
					<th>@lang('Type')</th>
					<th>@lang('Txnid')</th>
					<th>@lang('Amount')</th>
					<th>@lang('Date')</th>
				  </tr>
			  </thead>
			  <tbody>
                @if (count($transactions) == 0)
                    <tr>
                    <td colspan="12">
                        <h4 class="text-center m-0 py-2">{{__('No Data Found')}}</h4>
                    </td>
                    </tr>
                @else
				@foreach($transactions as $key=>$data)
				  @php
					  $from = App\Models\User::where('id',$data->user_id)->first();
				  @endphp
					<tr>
						<td data-label="@lang('No')">
							<div>

							<span class="text-muted">{{ $loop->iteration }}</span>
							</div>
						</td>

						<td data-label="@lang('Type')">
							<div>
							{{ strtoupper($data->type) }}
							</div>
						</td>

						<td data-label="@lang('Txnid')">
							<div>
							{{ $data->txnid }}
							</div>
						</td>

						<td data-label="@lang('Amount')">
							<div>
							<p class="text-{{ $data->profit == 'plus' ? 'success' : 'danger'}}">{{ showNameAmount($data->amount) }}</p>
							</div>
						</td>

						<td data-label="@lang('Date')">
							<div>
							{{date('d M Y',strtotime($data->created_at))}}
							</div>
						</td>
					</tr>
			  @endforeach
	        @endif

			  </tbody>
		  </table>
	  </div>
</div>
@endsection

@push('js')

@endpush
