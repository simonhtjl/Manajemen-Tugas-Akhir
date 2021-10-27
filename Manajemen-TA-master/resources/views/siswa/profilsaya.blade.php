@extends('layouts.master')
@section('header')

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
									<div class="profile-main">
										<img  width="100" height="100" src="{{$siswa->getAvatar()}}" class="img-circle" alt="Avatar">
										<h3 class="name">{{$siswa->nama_depan}} {{$siswa->nama_belakang}}</h3>
										
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
											<li>Jenis kelamin <span>{{$siswa->jenis_kelamin}}</span></li>
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
						<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Mata Pelajaran</h3>
								</div>
								<div class="panel-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Kode</th>
												<th>Nama</th>
												<th>Semester</th>
												<th>Nilai</th>
												<th>Guru</th>
											</tr>
										</thead>
										<tbody>
											@foreach($siswa->matakuliah as $mapel )
											<tr>
												<td>{{$mapel->kode_matkul}}</td>
												<td>{{$mapel->matakuliah}}</td>
												<td>{{$mapel->semester->semester}}</td>
												<td><a href="#" class="nilai" data-type="text" data-pk="{{$mapel->id}}" data-url="/api/siswa/{{$siswa->id}}/editnilai" data-title="Masukkan nilai">{{$mapel->pivot->nilai}}</a></td>
										
											</tr>
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
	
		
 @stop
 
 @section('footer')
 <script src="https://code.highcharts.com/highcharts.js"></script>
 <script>
	 	
 </script> 
 @stop