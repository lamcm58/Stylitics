@extends('admin.master')
@section('head.title', ' | Edit Customer')
@section('content')
<div class="row">
    <div class="col-sm-6">
        <h1 class="lead" style="font-size: 2.5em; color:rgb(255,0,0)">Customer
            <small>Edit</small>
        </h1>
    </div>
</div>
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		@if(count($errors) > 0)
			<div class="alert alert-danger">
				<ul>
					@foreach($errors->all() as $error)
						<li>{!! $error !!}</li>
					@endforeach
				</ul>
			</div>
		@endif
		<div class="panel panel-primary">
			<div class="panel-heading text-center">Edit Customer</div>
			<div class="panel-body">
				<form method="post" action="">
					<input type="hidden" value="{!! csrf_token() !!}" name="_token" />
					<div class="form-group">
						<label for="customer_name">Customer Name</label>
						<input class="form-control" name="name" id="customer_name" placeholder="Please Enter Customer Name" value="{!! old('customer_name',isset($customer)?$customer['name']:null) !!}" required />
					</div>
					<div class="form-group">
						<label for="address">Address</label>
						<input class="form-control" name="address" id="address" placeholder="Please Enter Customer Address" value="{!! old('address',isset($customer)?$customer['address']:null) !!}" required />
					</div>
					<div class="form-group">
						<label for="province">City</label>
						<select class="form-control" id="province" name="province">
							<option value="">Tỉnh/Thành phố</option>
							@foreach($provinces as $province)
							<option value="{{ $province->id }}" {!! $province->id == $customer->province_id ? 'selected':'' !!}>{{ mb_convert_case($province->name, MB_CASE_TITLE, "UTF-8") }}</option>
							@endforeach
						</select>
					</div>
					<div class="form-group">
						<label for="district">District</label>
						<select class="form-control" id="district" name="district">
							<option value="">Quận/Huyện</option>
							@foreach($districts as $district)
							<option value="{!! $district->id !!}" {!! $district->id == $customer->district_id ? 'selected':'' !!}>{!! $district->name !!}</option>
							@endforeach
						</select>
					</div>
					<div class="form-group">
						<label for="phone">Phone</label>
						<input class="form-control" id="phone" name="phone" placeholder="Please Enter Customer Phone" value="{!! old('phone',isset($customer)?$customer['phone']:null) !!}" required />
					</div>
					<div class="form-group">
						<label for="email">E-mail</label>
						<input class="form-control" type="email" name="email" id="email" placeholder="Please Enter Customer Email" value="{!! old('email',isset($customer)?$customer['email']:null) !!}" required />
					</div>
		            <div class="text-right">
						<input type="submit" class="btn btn-primary" value="Edit" />
						<input type="reset" class="btn btn-default" value="Reset" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
@stop

@section('body.js')
<script type="text/javascript">
$('#province').change(function() {
	var id = $(this).val();
	$.ajax({
		url: "{{ asset('admin/customer/district') }}",
		type: 'POST',
		data: {province_id: id},
		success: function (data) {
			$('#district').html("");
			$('#district').append("<option value=''>Quận/Huyện</option>");
			for (var i = 0; i < data.length; i++) {
				$('#district').append("<option value='"+ data[i].id +"'>"+ data[i].name +"</option>");
			}
		}
	});
	
});
</script>
@stop