@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Nombre</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
    <!----sucvule-->
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="apellido" class="col-md-4 control-label">Apellidos</label>

                            <div class="col-md-6">
                                <input id="apellido" type="text" class="form-control" name="apellido" value="{{ old('apellido') }}" required autofocus>

                                @if ($errors->has('apellido'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('apellido') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('domicilio') ? ' has-error' : '' }}">
                            <label for="domicilio" class="col-md-4 control-label">Domicilio</label>

                            <div class="col-md-6">
                                <input id="domicilio" type="text" class="form-control" name="domicilio" value="{{ old('domicilio') }}" required autofocus>

                                @if ($errors->has('domicilio'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('domicilio') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('sexo') ? ' has-error' : '' }}">
                            <label for="" class="col-md-4 control-label">Sexo</label>
                            <fieldset class="form-group">
                                <div class="col-md-4">
                                    <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="hombre" checked>
                                    <label class="form-check-label" for="sexo">Hombre</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="mujer">
                                    <label class="form-check-label" for="sexo">Mujer</label>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        
    <!--fun sucule-->

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">Correro electronico</label>

                            <div class="col-md-6">
                                <input id="email" type="email" aria-describedby="emailHelp" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Contraseña</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirmar contraseña</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Registrar
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
