@extends('layouts.app')

 	@section('tallas')
		active
 	@endsection

  @section('content')
	
<div class="container">
 <div class="row">
   <div class="col-md-10 col-md-offset-1">

   <div class="panel panel-default">
     <div class="panel-heading">Editar talla</div>
       <div class="panel-body">

        <form action="{{route('tallas.update' , $talla->id)}}" method="POST" role="form" autocomplete="off" enctype="multipart/form-data">
        {{csrf_field()}}
        {{ method_field('PUT') }}

          <div class="form-group{{ $errors->has('talla') ? ' has-error' : '' }}" >
              <label for="">Talla</label>
              <input type="text" class="form-control" id="talla" name="talla"  placeholder="Escriba la talla" value="{{ $talla->talla or old('talla') }}" required autofocus pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+">
              @if ($errors->has('talla'))
                 <span class="help-block">
                   <strong>{{ $errors->first('talla') }}</strong>
                 </span>
             @endif
          </div>

           
           <button type="submit" class="btn btn-primary">Actualizar</button>
            
               
       </form>


          </div>
       </div> 
     </div>
   </div>     
 </div><!-- /.container -->


  @endsection