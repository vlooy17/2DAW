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

$Usuario_nombre=$_POST["nombre"];
$Usuario_apellido1=$_POST["apellido1"];
$Usuario_apellido2=$_POST["apellido2"];
$Usuario_nick=$_POST["nick"];
$Usuario_clave=$_POST["clave"];
$Usuario_email=$_POST["email"];
$Usuario_bloqueado=1;
$Usuario_domicilio=$_POST["domicilio"];
$Usuario_poblacion=$_POST["poblacion"];
$Usuario_provincia=$_POST["provincia"];
$Usuario_nif=$_POST["dni"];
$Usuario_numero_telefono=$_POST["telefono"];

$token_aleatorio = md5($Usuario_nick);

//Código para subir la foto
$nombre_archivo=$Usuario_nick."_".basename($_FILES["fileToUpload"]["name"]);

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {
  

}else{
    echo "Ha ocurrido un error con la foto";
}

$sql = "INSERT INTO usuarios (Usuario_id,Usuario_nombre,Usuario_apellido1,Usuario_apellido2,Usuario_nick,Usuario_clave,Usuario_fecha_alta,Usuario_email,Usuario_bloqueado,Usuario_fecha_bloqueo,Usuario_numero_intentos,Usuario_fecha_ultima_conexion,Usuario_token_aleatorio,Usuario_domicilio,Usuario_poblacion,Usuario_provincia,Usuario_perfil,Usuario_nif,Usuario_numero_telefono,Usuario_fotografia,Usuario_fecha_contratacion )
VALUES ('','$Usuario_nombre','$Usuario_apellido1','$Usuario_apellido2','$Usuario_nick','$Usuario_clave','','$Usuario_email','$Usuario_bloqueado','','','','$token_aleatorio','$Usuario_domicilio','$Usuario_poblacion','$Usuario_provincia','cliente','$Usuario_nif','$Usuario_numero_telefono','$nombre_archivo','')";
if (mysqli_query($conn, $sql)) {
	$cabeceras = 'Content-type: text/html; charset=utf-8' . "\r\n";
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



mail($to,$subject,$txt,$cabeceras);
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
 header("Location: https://vlooy17.000webhostapp.com/2DAW/Login/Login1.php?&Registro=1");
mysqli_close($conn);
?>