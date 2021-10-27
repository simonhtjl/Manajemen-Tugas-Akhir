 @extends('layouts.master')
 @section('title','Siswa')
 @section('content')
 	<div class="main">
 		<div class="main-content">
 			<!-- @if(session('sukses'))
					<div class="alert alert-success" role="alert">
						{{session('sukses')}}
					</div>
				@endif  -->
 			<div class="row">
 				<div class="col-md-12">
 					<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Tambah Pengumuman baru</h3>
									
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-6">
											  <form action="{{route('posts.create')}}" method="POST" enctype="multipart/form-data">
													@csrf
												  <div class="form-group{{$errors->has('title') ? ' has-error' : ''}}">
												    <label for="exampleInputEmail1">Title</label>
												    <input name="title" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Title" value="{{old('title')}}">
												    @if($errors->has('title'))
												    	<span class="help-block">{{$errors->first('title')}}</span>
												    @endif
												  </div>
												   <div class="form-group">
												    <label for="exampleFormControlTextarea1">Content</label>
												    <textarea name="content" class="form-control" id="content" rows="3" >{{old('content')}}</textarea>
													</div>
												
										</div>

										<div class="col-md-6">
											<div class="input-group">
												   <span class="input-group-btn">
												     <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
												       <i class="fa fa-picture-o"></i> Choose
												     </a>
												   </span>
												   <input id="thumbnail" class="form-control" type="text" name="thumbnail">
												 </div>
												 <img id="holder" style="margin-top:15px;max-height:100px;">
												 <div class="input-group">
												 <input type="submit" class="btn btn-info" value="submit">
												 </div>
										</div>
									</div>
								</div>
							</div>
 				</div>
 			</div>
 		</div>
 	</div>
 @stop
@section('footer')
 <script src="/vendor/laravel-filemanager/js/lfm.js"></script>
<script>
	 ClassicEditor
        .create( document.querySelector( '#content' ) )
        .catch( error => {
            console.error( error );
        } );
   $(document).ready(function(){
  		$('#lfm').filemanager('image');

   });     
</script>
@stop