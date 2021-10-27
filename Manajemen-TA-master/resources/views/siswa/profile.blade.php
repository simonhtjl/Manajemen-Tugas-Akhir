@extends('layouts.master')
@section('header')
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
@stop
@section('content')
<div class="main">	
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					@if(session('sukses'))
						<div class="alert alert-success" role="alert">
							{{session('sukses')}}
						</div>
					@endif
					@if(session('error'))
						<div class="alert alert-danger" role="alert">
							{{session('error')}}
						</div>
					@endif
						<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img width="100" height="100" src="{{$siswa->getAvatar()}}" class="img-circle" alt="Avatar">
										<h3 class="name">{{$siswa->nama_depan}}</h3>
										<span class="online-status status-available">Available</span>
									</div>
									</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Data diri</h4>
										<ul class="list-unstyled list-justify">
											<li>NIM <span>{{$siswa->nim}}</span></li>
											<li>Prodi <span>{{$siswa->prodi->nama_prodi}}</span></li>
											<li>Email <span>{{$siswa->user->email}}</span></li>
											<li>Jenis kelamin <span>
												@if	( $siswa->jenis_kelamin == 'L' )
													Laki - laki

												@else
												Perempuan	
												@endif
											</span></li>
											<li>Agama <span>{{$siswa->agama}}</span></li>
											<li>Alamat <span>{{$siswa->alamat}}</span></li>
										</ul>
									</div>
									<div class="text-center"><a href="/siswa/{{$siswa->id}}/edit" class="btn btn-warning">Edit Profile</a></div>
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right">
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Tambah Nilai</button>
						<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Mata Kulliah</h3>
								</div>
								<div class="panel-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Kode</th>
												<th>Matakuliah</th>
												<th>Semester</th>
												<th>Project Report and Product</th>
												<th>Presentation and Demo</th>
												<th>Q&A</th>
												<th>Nilai Akhir</th>
												<th>Aksi</th>
											</tr>
										</thead>
										<tbody>
											@foreach($siswa->matakuliah as $mapel )
											<tr>
												<td>{{$mapel->kode_matkul}}</td>
												<td>{{$mapel->matakuliah}}</td>
												<td>{{$mapel->semester->semester}}</td>
												<td><a href="#" class="nilai" data-type="text" data-pk="{{$mapel->id}}" data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Masukkan nilai">{{$mapel->pivot->nilai}}</a></td>
												<td><a href="#" class="nilai" data-type="text" data-pk="{{$mapel->id}}" data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Masukkan nilai">{{$mapel->pivot->nilai1}}</a></td>
												<td><a href="#" class="nilai" data-type="text" data-pk="{{$mapel->id}}" data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Masukkan nilai">{{$mapel->pivot->nilai2}}</a></td>
												
												<td>{{$siswa->rataratanilai()}}</td>
												<td>
												<a href="/siswa/{{$siswa->id}}/{{$mapel->id}}/deletenilai" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin menghapus data in ?')" >Delete</a>
												</td>
											@endforeach
										</tbody>
									</table>
								</div>
							</div>
							<div class="panel">
								<div id="chartnilai">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Nilai</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/siswa/{{$siswa->id}}/addnilai" method="POST" enctype="multipart/form-data">
		@csrf
		 <div class="form-group">
		    <label for="mapel">Mata Pelajaran</label>
		    <select class="form-control" id="mapel" name="mapel">
		    	@foreach($matapelajaran as $mp)
		    		<option value="{{$mp->id}}">{{$mp->matakuliah}}</option>
		    	@endforeach
		    </select>
  		</div>
			<div class="form-group{{$errors->has('nilai') ? ' has-error' : ''}}">
				<label for="exampleInputEmail1">Final Project Report and Product</label>
				<input name="nilai" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nilai " value="{{old('nilai')}}">
				@if($errors->has('nilai'))
				<span class="help-block">{{$errors->first('nilai')}}</span>
				@endif
			</div>
			<div class="form-group{{$errors->has('nilai1') ? ' has-error' : ''}}">
				<label for="exampleInputEmail1">Presentation Slides and Product Demo</label>
				<input name="nilai1" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nilai " value="{{old('nilai1')}}">
				@if($errors->has('nilai1'))
				<span class="help-block">{{$errors->first('nilai1')}}</span>
				@endif
			</div>
			<div class="form-group{{$errors->has('nilai2') ? ' has-error' : ''}}">
				<label for="exampleInputEmail1">Questions and Answer</label>
				<input name="nilai2" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nilai " value="{{old('nilai2')}}">
				@if($errors->has('nilai2'))
				<span class="help-block">{{$errors->first('nilai2')}}</span>
				@endif
			</div>
			
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save changes</button>
	</form>
      </div>
    </div>
  </div>
</div>
 @stop
 
 @section('footer')
 <script src="https://code.highcharts.com/highcharts.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
 <script>
	 	Highcharts.chart('chartnilai', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'Laporan Nilai Siswa'
	    },
	    xAxis: {
	        categories:{!!json_encode($categories)!!},
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: 'Nilai'
	        }
	    },
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        }
	    },
	    series: [{
	        name: 'Nilai Akhir',
	        data: {!!json_encode($data)!!}
 
	    }] 
	}); 

	$(document).ready(function() {
    $('.nilai').editable();
}); 	
 </script> 
 @stop