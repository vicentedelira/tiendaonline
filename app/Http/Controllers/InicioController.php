<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto; //para poder usar el modelo
use App\Productom; //modelo de producto mujer
use App\Talla; //para poder usar el modelo
use App\Categoria; //para poder usar el modelo
use App\Imagen;
use DB;
use PDF;

class InicioController extends Controller
{
	public function inicio(){
		$productos = Producto::
                orderBy('id', 'desc')
                ->limit(6)
                ->get();

        $productos->each(function($productos){
            $productos->categoria;
            $productos->imagenes;
        });

        $max = Producto::max('vendido');
        $masvendido = Producto::where('vendido' , '>=' , $max)->get();

        $masvendido->each(function($masvendido){
            $masvendido->imagenes;
        });

        return view('index')->with(['productos'=>$productos , 'masvendido' => $masvendido]);
    }

    public function descripcion($id){
    	$producto = Producto::find($id);
    	$producto->imagenes;
    	$producto->categoria;
        $producto->tallas;

      
        DB::table('productos')
            ->where('id', $id)
            ->increment('visitas');

		$tallas = Talla::all();

    	return view('Principal.detalle')->with(['producto' => $producto , 'tallas' => $tallas]);
    }


    public function pdf($id){
        $producto = Producto::find($id);
        $categorias=Categoria::all();
        $tallas = Talla::all();

        //Mostrar las tallas que tiene el producto
        $misTallas = $producto->tallas;

        $producto->imagen = DB::table('imagenes')->where('producto_id',$producto->id)->first();

				//$pdf = PDF::loadView('invoice');
				//return $pdf->download('invoice.pdf');

				$data = ['categorias' => $categorias , 'producto' => $producto , 'misTallas' => $misTallas , 'tallas' => $tallas ];


        $pdf = \PDF::loadView('Productos.vistapdf' , $data);

				//return view('Productos.vistapdf')->with(['categorias' => $categorias , 'producto' => $producto , 'misTallas' => $misTallas , 'tallas' => $tallas ]);
        return $pdf->download('Productoprint.pdf');
    }

    public function busqueda(Request $request){ 

        $palabra = $request->buscador;

            $productos = Producto::search($request->buscador)->paginate(9);
            $productos->each(function($productos){
                $productos->categoria;
                $productos->imagenes;
            });



        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => $palabra] );
    }

    public function busqueda_hombre(){ 

        $productos = Producto::where('genero', 'Hombre')->paginate(12);
        $productos->each(function($productos){
            $productos->categoria;
            $productos->imagenes;
        });

        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => 'Hombre'] );
    }

    public function busqueda_mujer(){ 
        $productos = Producto::where('genero', 'Mujer')->paginate(12);
        $productos->each(function($productos){
            $productos->categoria;
            $productos->imagenes;
        });

        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => 'Mujer'] );
    }

    public function busqueda_kids(){ 

        $productos = Producto::where('genero', 'Niños')->paginate(12);
        $productos->each(function($productos){
            $productos->categoria;
            $productos->imagenes;
        });

        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => 'Niños'] );
    }

    public function busqueda_articulos(){ 

        $productos = Producto::where('genero', 'Articulo')->paginate(12);
        $productos->each(function($productos){
            $productos->categoria;
            $productos->imagenes;
        });

        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => 'Articulos'] );
    }




    public function busquedam(Request $request){ 

        $palabra = $request->buscador;

            $productos = Producto::search($request->buscador)->paginate(9);
            $productos->each(function($productos){
                $productos->categoria;
                $productos->imagenes;
            });



        return view('Principal.productos')->with(['productos' => $productos , 'palabra' => $palabra] );
    }

    public function generar_estadisticas(){

        $vendido = DB::select('SELECT nombre,vendido FROM `productos` WHERE 1 = 1 ORDER BY vendido DESC LIMIT 10');

        $i=0;
        $finals = array();
        foreach($vendido as $producto){
            $finals[$i]["label"] = $producto->nombre;
            $finals[$i]["y"]= $producto->vendido;
            $i++;
        }
        //SELECT marca,vendido FROM productos GROUP BY marca ORDER BY vendido DESC LIMIT 5
        
        $genero_users = DB::select('SELECT COUNT(*) as res from users WHERE sexo = "hombre" UNION SELECT COUNT(*) from users WHERE sexo = "mujer"');
        $sexo = array();
        $sexo[0]["label"] = "Hombres";
        $sexo[0]["y"]= $genero_users[0]->res;
        $sexo[1]["label"] = "Mujeres";
        $sexo[1]["y"]= $genero_users[1]->res;

        $visitas_p = DB::select('SELECT nombre,visitas FROM `productos` WHERE 1 = 1 ORDER BY visitas DESC LIMIT 10');
        $i=0;
        $visitas = array();
        foreach($visitas_p as $producto){
            $visitas[$i]["label"] = $producto->nombre;
            $visitas[$i]["y"]= $producto->visitas;
            $i++;
        }

        return view('estadisticas.graficas', ['vendido' => $finals,'sexo' => $sexo, 'visitas' => $visitas, 'marcas => $marcas']);
        
    } 

}


//$productos = Producto::find(1);
//$productos->categoria;
//$productos->tallas;

//dd($productos);
