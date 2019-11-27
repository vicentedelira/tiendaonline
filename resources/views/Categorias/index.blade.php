
 @extends('layouts.app')


  @section('content')

<div class="container">
  <div class="row">
    <div class="col-md-10 col-md-offset-1">
      <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Categorias</div>
        <div class="panel-body">
          <a class="btn btn-primary" href="{{route('categorias.create')}}" role="button"> Nueva Categoria </a>

        <!-- BUSCADOR-->
			    <form class="navbar-form pull-right" action="{{route('categorias.index')}}" method="GET" role="form" autocomplete="off" enctype="multipart/form-data">
            <div class="form-group">
              <div class="input-group">
                 <input type="text" class="form-control" placeholder="Buscar..." id="buscador" name="buscador">
                  <span class="input-group-btn">
                   <button class="btn btn-default" type="submit" ><span class="glyphicon glyphicon-search"></span></button>
                  </span>
              </div><!-- /input-group -->
            </div>
          </form>
         <!-- FIN DEL BUSCADOR -->

        </div>

       

        <!-- Table -->
	
        <div class="table-responsive">
        <table class="table table-striped ">
          <thead>
            <tr>
              <th>ID</th>
              <th>Nombre</th>
              <th>Accion</th>
            </tr>
          </thead>
          <tbody>
          @foreach($categorias as $categoria)
            <tr>
              <td>{{$categoria->id}}</td>
              <td>{{$categoria->nombre}}</td>
              
              <td>

              <a href="{{ route('categorias.destroy' , ['id' => $categoria->id ] ) }}" class="glyphicon glyphicon-remove-circle btn btn-danger" ></a>

              <a href="{{route('categorias.edit' , $categoria->id )}}" class="glyphicon glyphicon-pencil btn btn-warning"></a>

              </td>
            </tr>
           @endforeach
          </tbody>
        </table>

    <center>
      {{ $categorias->links() }} 
    </center>
        

      </div>
        
      </div>

   </div>
 </div>  
</div><!-- /.container -->


  @endsection