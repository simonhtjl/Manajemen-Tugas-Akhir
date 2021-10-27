	<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/home"><img src="{{asset('admin/assets/img/logo.png')}}" alt="Logo" class="img-responsive logo" style="width: 25px;"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="
								@if(auth()->user()->role == 'siswa')
								{{auth()->user()->siswa->getAvatar()}}
								@else
								{{asset('images/default.jpg')}}
								@endif
								" class="img-circle" alt="Avatar"> <span>
								@if(auth()->user()->role == 'siswa')
									{{auth()->user()->siswa->nama_depan}}
								@else	
									{{auth()->user()->name}}
								@endif
								</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="/profilsaya"><i class="lnr lnr-user"></i> <span>Profil Saya</span></a></li>
								<li><a href="/changepass"><i class="fa fa-key"></i> <span>Ubah Password</span></a></li>
								<li><a href="/logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
					
					</ul>
				</div>
			</div>
		</nav>