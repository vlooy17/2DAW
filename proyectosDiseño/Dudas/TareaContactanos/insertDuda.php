<?php
include '../conexion.php';

$email=$_GET["email"];
$fecha_alta=date("Y-m-d");
$duda=$_GET["mensaje"];

if(isset($_GET["long"])){
	$longitud=$_GET["long"];
}else{
	$longitud=0;
}

if(isset($_GET["lat"])){
	$latitud=$_GET["lat"];
}else{
	$latitud=0;
}

$sql = "INSERT INTO incidencias (email,pregunta,fechaAlta,ubiLongitud,ubiLatitud) 
			values('$email','$duda',$fecha_alta,$longitud,$latitud)";

if (mysqli_query($conn, $sql)) {
	    echo "Consulta guardada correctamente";
	    echo "<a href='../../index.html'><button>Volver a inicio</button></a>";
} else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?> 