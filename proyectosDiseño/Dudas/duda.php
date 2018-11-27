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

$correo=$_POST["correo"];
$duda=$_POST["pregunta"];
$longitud=$_POST["long"];
$latitud=$_POST["lat"];
$Usuario_email="vanlooy99@gmail.com";
//$fechaAlta

$sql = "INSERT INTO incidencia(Correo,Pregunta,Latitud,Longitud)
VALUES ('$correo','$duda','$latitud','$longitud')";

if (mysqli_query($conn, $sql)) {
  $cabeceras = 'From: incidencia@incidencia.com' . "\r\n" .'Content-type: text/html; charset=utf-8' . "\r\n";
  $to = $Usuario_email;
  $subject = "Incidencia";
  $txt =  "https://vlooy17.000webhostapp.com/2DAW/Dudas/Localizacion.php";



mail($to,$subject,$txt,$cabeceras);
}else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
header("Location:https://vlooy17.000webhostapp.com/2DAW/Dudas/FormDuda.php?&Duda=1");
mysqli_close($conn);

?>