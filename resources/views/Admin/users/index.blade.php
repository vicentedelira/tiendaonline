 @extends('layouts.app')
  @section('usuarios')
    active
  @endsection

  @section('content')
	<div class="container">
   <div class="row">
    <div class="col-md-10 col-md-offset-1">
    
      <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Usuarios</div>
        <div class="panel-body">
          <a class="btn btn-primary" href="{{route('users.create')}}" role="button"> Nuevo Usuario </a>
          <!-- BUSCADOR-->
			    <form class="navbar-form pull-right" action="{{route('users.index')}}" method="GET" role="form" autocomplete="off" enctype="multipart/form-data">
            <div class="form-group">
              <div class="input-group">
                 <input type="text" class="form-control" placeholder="Buscar..." id="buscador" name="buscador">
                  <span class="input-group-btn">
                   <button class="btn btn-default" type="submit" ><span class="glyphicon glyphicon-search"></span></button>
                  </span>
              </div><!-- /input-group -->
            </div><!-- /form-group -->
          </form><!--/form-->
         <!-- FIN DEL BUSCADOR -->
        </div>

        <!-- Table -->
        <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>ID</th>
              <th>Nombre</th>
              <th>Apellidos</th>
              <th>Domicilio</th>
              <th>Sexo</th>
              <th>Tipo</th>
              <th>Correo</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
          @foreach($users as $user)
            <tr>
              <td>{{$user->id}}</td>
              <td>{{$user->name}}</td>
              <td>{{$user->apellido}}</td>
              <td>{{$user->domicilio}}</td>
              <td>{{$user->sexo}}</td>
              <td>
                @if($user->type == 'member')
                <span class="label label-primary">{{$user->type}}</span>
                @else
                <span class="label label-danger">{{$user->type}}</span>
                @endif
              </td>
              <td>{{$user->email}}</td>
              <td>
              <a href="{{ route('admin.users.destroy' , ['id' => $user->id ] ) }}" class="glyphicon glyphicon-remove-circle btn btn-danger" ></a>
              <a href="{{route('users.edit' , $user->id )}}" class="glyphicon glyphicon-pencil btn btn-warning"></a>
              </td>
            </tr>
           @endforeach
          </tbody>
        </table>

    <center>
      {{ $users->links() }} 
    </center>
        

      </div>
        
      </div>


  </div>    
 </div>  
</div><!-- /.container -->
  @endsection