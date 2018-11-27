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
		$servername = "localhost";
		$username = "id5448654_usuarios";
		$password = "trebujena";
		$dbname = "id5448654_prueba1";

		$conn = mysqli_connect($servername, $username, $password, $dbname);
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}

		$sql = "SELECT * FROM proveedores WHERE Proveedor_ID like ".$id;
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {

			while($row = mysqli_fetch_assoc($result)) {
				echo '<!DOCTYPE html>
<html lang="en">
<head>
  <title>Modificar Proveedores</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
 <h2>Página de Modificar Proveedores</h2>
<div class="container">
 
  <form method="POST" action="actualizarN.php?id='.$id.'" enctype="multipart/form-data">
    <div class="form-group">
      <label for="nombre">Nombre:</label>
      <input required="" readonly type="text" pattern="[A-Za-z]{.30}" class="form-control" id="nombre" value="'.$row["Proveedor_Nombre"].'" name="nombre">
    </div>
    <div class="form-group">
      <label for="cif">CIF:</label>
      <input required="" readonly pattern="([A-Z]{1}[0-9]{8})" type="text" class="form-control" id="cif" value="'.$row["Proveedor_CIF"].'" name="cif">
    </div>
    <div class="form-group">
      <label for="contacto">Persona Contacto:</label>
      <input required="" type="text" class="form-control" id="contacto" value="'.$row["Proveedor_Persona_Contacto"].'" name="contacto">
    </div>
    <div class="form-group">
      <label for="clave">Clave:</label>
      <input required="" readonly type="text" class="form-control" id="clave" value="'.$row["Proveedor_clave"].'" name="clave">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input required="" type="email" class="form-control" id="email" value="'.$row["Proveedor_Email"].'" name="email">
    </div>
    <div class="form-group">
      <label for="telefono">Teléfono:</label>
      <input required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{1,}" type="number" class="form-control" id="telefono" value="'.$row["Proveedor_Telefono"].'"
       name="telefono">
    </div>
     <div class="form-group">
      <label for="direccion">Dirrecion:</label>
      <input type="text" class="form-control" id="direccion" value="'.$row["Proveedor_Direccion"].'" name="direccion">
    </div>
     <div class="form-group">
      <label for="contacto">URL:</label>
      <input  type="text" class="form-control" id="url" value="'.$row["Proveedor_URL"].'" name="url">
    </div>
     <div class="form-group">
      <label for="contacto">Longitud:</label>
      <input  type="number" class="form-control" id="longitud" value="'.$row["Proveedor_Longitud"].'" name="longitud">
    </div>
     <div class="form-group">
      <label for="contacto">Latitud:</label>
      <input  type="text" class="form-control" id="latitud" value="'.$row["Proveedor_Latitud"].'" name="latitud">
    </div>
    <div>
				<label for="foto" >Introduzca su fotografía</label><br>
				<input type="file" id="fileToUpload" name="fileToUpload" value="'.$row["Proveedor_Foto"].'"  ><br>
				</div>
    <div style="float: right; position: fixed;margin-top: -55%; margin-left: 50%;height: auto; width: 35%;">
				<img src="imagenes/'.$row["Proveedor_Foto"].'" style="height: auto; width: 100%;">
				</div>
    <button type="submit" class="btn btn-default">Actualizar Datos</button>
  </form>
</div>
</body>
</html>';
			}
		}else{
			echo "No hay resultado";
		}	

		mysqli_close($conn);


?>  		
