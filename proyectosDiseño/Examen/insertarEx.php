<?php
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

$Proveedor_Nombre=$_POST["nombre"];
$Proveedor_clave=$_POST["clave"];
$Proveedor_Email=$_POST["email"];
$Proveedor_CIF=$_POST["cif"];
$Proveedor_Telefono=$_POST["telefono"];
$Proveedor_Persona_Contacto=$_POST["contacto"];
//Código para subir la foto
/*$nombre_archivo=$Usuario_nick."_".basename($_FILES["fileToUpload"]["name"]);

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {
  

}else{
    echo "Ha ocurrido un error con la foto";
}*/

$sql = "INSERT INTO proveedores (Proveedor_ID,Proveedor_Nombre,Proveedor_Direccion,Proveedor_CIF,Proveedor_Persona_Contacto,Proveedor_Telefono,Proveedor_URL,Proveedor_Longitud,Proveedor_Latitud,Proveedor_clave,Proveedor_Email,Proveedor_Foto,Proveedor_Melodia)
VALUES ('','$Proveedor_Nombre','','$Proveedor_CIF','$Proveedor_Persona_Contacto','$Proveedor_Telefono','','','','$Proveedor_clave','$Proveedor_Email','','')";
if (mysqli_query($conn, $sql)) {

/*	$cabeceras = 'Content-type: text/html; charset=utf-8' . "\r\n";
  $to = $Usuario_email;
  $subject = "Registro";
  $enlace = "https://vlooy17.000webhostapp.com/2DAW/Login/desbloqueo.php?token_aleatorio=".$token_aleatorio;
  $txt =  "
  <html>
  <style>
  {
   background-color: black !important;
}
</style>
<head>
<title></title>
</head>
<body>

<a href='$enlace'><button type='submit' class='btn btn-default'>Confirmar</button></a>

</body>
</html>";



mail($to,$subject,$txt,$cabeceras);*/
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>