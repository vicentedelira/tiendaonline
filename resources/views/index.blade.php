@extends('layouts.app')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	@section('carrusel')
	<br><br>
	<!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill">
                	<img src="{{ URL::to('/') }}/images/carrusel/puma.jpg">
                </div>
                <div class="carousel-caption">
                    <h3>Envios desde $100</h3>
                </div>
            </div>
            <div class="item">
                <div class="fill">
                	<img src="{{ URL::to('/') }}/images/carrusel/carru1.jpg">
                </div>

            </div>
            <div class="item">
                <div class="fill">
                	<img src="{{ URL::to('/') }}/images/carrusel/carru2.jpg">
                </div>

            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

	@endsection
	
  @section('principal')

     <!-- Page Content -->
    <div class="container">

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-md-12">
                <h2 class="page-header">Novedades</h2>
            </div>
			
			
            @foreach($productos as $producto)
            <div class="col-md-4 col-sm-6">
            <div class="estilodiv">
            
                <a href="{{route('producto.descripcion',['id' => $producto->id , 'slug' => $producto->slug])}}">
                	@foreach($producto->imagenes as $imagen)
                	<center>
                    <img class="imgindex" src="{{ URL::to('/') }}/images/productos/{{$imagen->imagen}}" width="160" height="200"  alt="">
                    </center>
                    @break
                   	@endforeach
                </a>
                    <h3 align="center">{{$producto->nombre}}</h3>
                	<h4 align="center">${{$producto->precio}}</h4> 
                	
            </div>
            </div>
            @endforeach
            
        </div>
        <!-- /.row -->

        

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Encuentra todos lo productos que buscas a un precio increible!</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="{{route('producto.busqueda')}}">Presiona aqui!</a>
                </div>
            </div>
        </div>

        <hr>

</div>

<div class="container medium">
    <div class="container-images">
        <div class="row justify-content-md-center filaimage">
            <div class="col-md-4 grid1">
                <label>Hombres</label>
                <a href="{{route('producto.busqueda.hombre')}}" ><img src="{{ URL::to('/') }}/images/main/hombre.jpg"></a>
            </div>
            <div class="col-md-4 grid2">
                <label>Mujeres</label>
                <a href="{{route('producto.busqueda.mujer')}}" ><img src="{{ URL::to('/') }}/images/main/mujeres.png"></a>
            </div>
            <div class="col-md-4 grid3">
                <label>Niños</label>
                <a href="{{route('producto.busqueda.niños')}}" ><img src="{{ URL::to('/') }}/images/main/ninos.jpg"></a>
            </div>
        </div>
    </div>
</div>  

<section class="chat-container">
	<div class="chat-button">
        ¿Dudas?, Chatea con nosotros!
	</div>
	<div class="chat-content">
        <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FTienda-Negocios-II-102578941218086%2F&tabs=messages,timeline&width=340&height=500&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
    </div>
</section>

<!-- Footer -->
<footer>
  <div class="content">
  
  <div class="row">
    <div class="logo col-sm-4">
      <h2> Siguenos:</h2>
       <!-- Social buttons -->

    <ul class="list-unstyled list-inline text-center">
        <a class="face" href="https://www.facebook.com/TiendaNegocios-102900061185275/">
        <i class="fab fa-facebook-f"></i>
        </a>
        <a class="twitter" href="http://www.twitter.com">
          <i class="fab fa-twitter"> </i>
        </a>
        <a class="google" href="https://plus.google.com">
          <i class="fab fa-google-plus-g"> </i>
        </a>
        <a class="whats" href="https://web.whatsapp.com">
            <i class="fab fa-whatsapp"></i>
        </a>
    </ul>
    <!-- Social buttons -->
    </div>
    <div class="contacto col-sm-4"> 
      <h2>Contacto</h2>
      <i class="fas fa-phone-alt">  Telefono: <label> (449)205-08-65</label></i><br>
      <i class="fas fa-at">  Correo Electronico: <label> strike53@gmail.com</label></i><br>
      <i class="fas fa-home">  Direccion:<label> Av. Tecnologico S/N fracc.  </label></i> 
    </div>
    <div class="newsletter col-sm-4">
      <h2>Newsletter</h2>
      <p>subscribete y recibe las noticias mas relevantes y mas importantes de nuestro sitio</p>
      <br><br>
      <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
               <label for="">Correo Electrónico</label>
               <input type="email" class="form-control" id="email" name="email"  placeholder="exemple@mail.com" value="{{ old('email') }}" required >
               @if ($errors->has('email'))
                 <span class="help-block">
                   <strong>{{ $errors->first('email') }}</strong>
                 </span>
               @endif
      </div>
      <button type="submit" class="btn btn-primary">Subscribir</button>
    </div>
  </div>

  </div>
  <div class="footer-copyright text-center py-3 copy">© 2019 Copyright:
    <a href="www.tiendanegocios.site">Tienda</a>
  </div>
</footer>

<script>
    $(".chat-button").on('click', function(e){
    e.preventDefault();
    $(".chat-content").slideToggle('fast');
    });
</script>
<!-- Footer -->
@endsection
