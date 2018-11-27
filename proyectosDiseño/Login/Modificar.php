<?php

session_start();

$id="";
$mod="";
if(isset($_GET["id"])){
	$id = $_GET["id"]; 


}
if(isset($_GET["Modificado"])){
	$mod = $_GET["Modificado"]; 

	echo "<script type='text/javascript'>
	alert('Usuario Modificado');
	</script>"	;
}

if(isset($_SESSION["perfil"])){
	if($_SESSION["perfil"]=="admin"){

		$servername = "localhost";
		$username = "id5448654_usuarios";
		$password = "trebujena";
		$dbname = "id5448654_prueba1";

		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}

		$sql = "SELECT * FROM usuarios WHERE Usuario_id like ".$id;
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {

			while($row = mysqli_fetch_assoc($result)) {
				echo "<!DOCTYPE html>
				<html lang='en'>
				<head>
				<title>Página de regristo</title>
				<meta charset='utf-8'>
				<meta name='viewport' content='width=device-width, initial-scale=1'>
				<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
				<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
				<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

				</head>
				<style>
				body{
					background-color: white !important;
				}
				h2{
					background-color: #245658 !important;
					margin-top: 0%;
					color: white;
					height: 70px;
					padding-top:15px;
					padding-left: 2%;

				}
				::value { color: #245658 !important;
					opacity: 0.60 !important; 
				}
				label{
					color: #245658;
					text-shadow: 1;
				}
				input{
					width: 50% !important;
				}
				button{
					background-color: #245658 !important;
					color: white !important;
				}
				</style>

				<body>
				<h2>Página de registro</h2>
				<div class='container'>

				<form method='POST' action='actualizar.php?id=".$id."' enctype='multipart/form-data'>
				<div class='form-group'>
				<label for='nombre'>Nombre:</label>
				<input  type='text' class='form-control' id='nombre' value='".$row["Usuario_nombre"]."' name='nombre'>
				</div>
				<div class='form-group'>
				<label for='apellido1'>Primer Apellido:</label>
				<input type='text' class='form-control' id='apellido1' value='".$row["Usuario_apellido1"]."' name='apellido1'>
				</div>
				<div class='form-group'>
				<label for='apellido2'>Segundo Apellido:</label>
				<input type='text' class='form-control' id='apellido2' value='".$row["Usuario_apellido2"]."' name='apellido2'>
				</div>
				<div class='form-group'>
				<label for='nick'>Nick:</label>
				<input type='text' readonly class='form-control' id='nick' value='".$row["Usuario_nick"]."' name='nick'>
				</div>
				<div class='form-group'>
				<label for='clave'>Clave:</label>
				<input type='text' class='form-control' id='clave' value='".$row["Usuario_clave"]."' name='clave'>
				</div>
				<div class='form-group'>
				<label for='email'>Email:</label>
				<input type='email' readonly class='form-control' id='email' value='".$row["Usuario_email"]."' name='email'>
				</div>
				<div class='form-group'>
				<label for='domicilio'>Domicilio:</label>
				<input type='text' class='form-control' id='domicilio' value='".$row["Usuario_domicilio"]."' name='domicilio'>
				</div>
				<div class='form-group'>
				<label for='poblacion'>Poblacion:</label>
				<input type='text' class='form-control' id='poblacion' value='".$row["Usuario_poblacion"]."' name='poblacion'>
				</div>
				<div class='form-group'>
				<label for='provincia'>Provincia:</label>
				<input type='text' class='form-control' id='provincia' value='".$row["Usuario_provincia"]."' name='provincia'>
				</div>
				<div class='form-group'>
				<label for='dni'>DNI/NIF:</label>
				<input type='text' readonly class='form-control' id='dni' value='".$row["Usuario_nif"]."' name='dni'>
				</div>
				<div class='form-group'>
				<label for='telefono'>Teléfono:</label>
				<input type='number'  class='form-control' id='telefono' value='".$row["Usuario_numero_telefono"]."' name='telefono'>
				</div>
				<div>
				<label for='foto' >Introduzca su fotografía</label><br>
				<input type='file' id='fileToUpload' name='fileToUpload' value='".$row["Usuario_fotografia"]."'  ><br>
				</div>
				<button type='submit' class='btn btn-default'>Registrarme</button>
				</form>
				<div style='float: right; position: fixed;margin-top: -55%; margin-left: 50%;height: auto; width: 35%;'>
				<img src='imagenes/".$row["Usuario_fotografia"]."' style='height: auto; width: 100%;'>
				</div>
				</div>
				</body>
				</html>";
			}
		}else{
			echo "No hay resultado";
		}	

		mysqli_close($conn);


	}else{

		header("Location: Cliente.php");
	}
}else{
	header("Location: Login1.php");
}





?>  		
