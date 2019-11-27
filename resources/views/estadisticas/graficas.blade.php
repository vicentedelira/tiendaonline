@extends('layouts.app')


<br><br><br>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<br><br><br>
<div id="visitas" style="height: 370px; width: 100%;"></div>
<br><br><br>
<div id="pie" style="height: 370px; width: 100%;"></div>




@section('scripts')
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {

    
var masVendidos = {!! json_encode($vendido) !!};
var sexo = {!! json_encode($sexo) !!};
var visitas = {!! json_encode($visitas) !!};


var chart = new CanvasJS.Chart("chartContainer", {
	theme: "dark1", // "light1" "light2", "dark1", "dark2" 
	animationEnabled: false, // change to true		
	title:{
		text: "Productos mas Vendidos"
	},
	data: [
	{
		// Change type to "bar", "area", "spline", "pie",etc.
		type: "column",
		dataPoints: masVendidos
	}
	]
});
chart.render();

var visitas = new CanvasJS.Chart("visitas", {
	theme: "dark1", // "light1" "light2", "dark1", "dark2"
	animationEnabled: false, // change to true		
	title:{
		text: "Productos mas visitados"
	},
	data: [
	{
		// Change type to "bar", "area", "spline", "pie",etc.
		type: "column",
		dataPoints: visitas
	}
	]
});
visitas.render();

var pie = new CanvasJS.Chart("pie", {
	theme: "dark1", // "light1" "light2", "dark1", "dark2"
	animationEnabled: false, // change to true		
	title:{
		text: "Cantidad de Usuarios"
	},
	data: [
	{
		// Change type to "bar", "area", "spline", "pie",etc.
		type: "pie",
		toolTipContent: "{y} - #percent %",
		dataPoints: sexo
	}
	]
});
pie.render();



}
</script>
@endsection
