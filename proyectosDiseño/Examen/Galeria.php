<?php
session_start();
$id="";
if(isset($_GET["id"])){
    $id=$_GET["id"];
  }
  $subida=0;
if(isset($_GET["subida"])){
    $id=$_GET["subida"];
    
  }
  $servername = "localhost";
		$username = "id5448654_usuarios";
		$password = "trebujena";
		$dbname = "id5448654_prueba1";

		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		// Check connection
		if (!$conn) {
    		die("Connection failed: " . mysqli_connect_error());
		}
		
		
echo '<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <!-- Compiled and minified Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<!-- Minified JS library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <script type="text/javaScript">

    if('.$subida.'==1){
        alert("Imagen Agregada");
    }
    </script>
</head>
<body>
    <h1 style="  background-color: #245658 !important;margin-top: 0%;color: white;height: 70px;padding-top:15px;padding-left: 65px;margin-left:-2.5%;">Galeria de fotos 
    <a style=" padding-left: 50%;
 font-size: 0.7em;"  href="administrador.php">Inicio</a>
    </h1>';
    echo "<div><form method='GET' action='Galeria.php?tam'>";
    echo"<h3 style='padding-left: 65px;'>Elija la cantidad de fotos a ver <select  name ='tam'></h3> ";
        echo"<option value='3'></option>";
        echo"<option value='1'>1</option>";
        echo"<option value='3'>3</option>";
        echo"<option value='6'>6</option>";
    echo "  </select>";
    echo "  <input type='submit' value='Enviar'/>";
    echo "  </div>
            </form>" ;   
            $url = "https://vlooy17.000webhostapp.com/2DAW/Examen/Galeria.php";
            $consulta = "SELECT * FROM FotosIncidencia";
            $rs = mysqli_query($conn,$consulta);
            $num_total_registros = mysqli_num_rows($rs);
            $TAMANO_PAGINA;
            $i=0;
            if(isset($_GET["tam"])){
                $TAMANO_PAGINA = $_GET["tam"];

            }else{
                $TAMANO_PAGINA=3;
            }
            if(isset($_GET["pagina"])){
                $pagina = $_GET["pagina"];
                $inicio = ($pagina - 1) * $TAMANO_PAGINA;
            }
            else  {
                $inicio = 0;
                $pagina = 1;
            }
            $total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);
            $consulta2 = "SELECT * FROM FotosIncidencia LIMIT ".$inicio."," . $TAMANO_PAGINA;
            $res = mysqli_query($conn,$consulta2);
            echo "<p style='font-size:40px; margin-left:40%;'>";
        if ($total_paginas > 0) {
            if ($pagina != 1)
                echo '<a  href="'.$url.'?pagina='.($pagina-1).'"></a>';
            for ($i=1;$i<=$total_paginas;$i++) {
                if ($pagina == $i){

                    echo $pagina;
                }else{

                    echo '<a href="'.$url.'?tam='.$TAMANO_PAGINA.'&pagina='.$i.'">'.$i.'</a>  ';
                }
                if ($pagina != $total_paginas){
                    echo '<a href="'.$url.'?tam='.$TAMANO_PAGINA.'&pagina='.($pagina+1).'"></a>';
                }
            }
            echo "</p>";
            
        }
        echo "</div>";
    if (mysqli_num_rows($res) > 0) {			
        while($row = mysqli_fetch_assoc($res)) {
                echo'<div style="float:left;margin-right:8px;margin-top:10px;margin-left:30px;"><a style="width:100%;" href=" ./imagenes/'.$row["Foto"].'"><img  style="height:350px;width:400px;" height="100px" width="200px" src=" ./imagenes/'.$row["Foto"].'"></a>
                     </div>';

        }
        echo "</br>";
        
       
        
}
    echo'</body></html>';
?>
