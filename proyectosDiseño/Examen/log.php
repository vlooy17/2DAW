<?php
session_start();


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

$clave = $_POST["clave"];
$nombre = $_POST["nombre"];
$_SESSION["usu"]=$nombre;

$sql = "SELECT *  FROM proveedores WHERE Proveedor_clave LIKE '$clave' and Proveedor_Nombre like '$nombre'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while($row = $result->fetch_assoc()) {
       // $perfil=$row["Usuario_perfil"];
        //$_SESSION["foto"] = $row["Usuario_fotografia"];
        //$update = "UPDATE usuarios set Usuario_numero_intentos=0 where Usuario_nick like '$nick'";
        //if($perfil == "cliente"){
        //	$_SESSION["perfil"]=$perfil;

        	header("Location: administrador.php");
       // }else{
        //	$_SESSION["perfil"]=$perfil;
        //	header("Location: ./admin.php");
        //}
    }
} else {

  header("Location: https://vlooy17.000webhostapp.com/2DAW/Examen/PrimeraPagina.php?error=1");
}



mysqli_close($conn);




?> 