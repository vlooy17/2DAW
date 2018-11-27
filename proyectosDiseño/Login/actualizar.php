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
$id="";

if(isset($_GET["id"])){
  $id = $_GET["id"]; 


}
$Usuario_nombre=$_POST["nombre"];
$Usuario_apellido1=$_POST["apellido1"];
$Usuario_apellido2=$_POST["apellido2"];
$Usuario_clave=$_POST["clave"];
$Usuario_domicilio=$_POST["domicilio"];
$Usuario_poblacion=$_POST["poblacion"];
$Usuario_provincia=$_POST["provincia"];
$Usuario_numero_telefono=$_POST["telefono"];


//Código para subir la foto
$nombre_archivo=$Usuario_nombre."_".basename($_FILES["fileToUpload"]["name"]);

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {

}else{
    echo "Ha ocurrido un error con la foto";
}

$sql = "UPDATE usuarios SET
Usuario_nombre='$Usuario_nombre',
Usuario_apellido1='$Usuario_apellido1',
Usuario_apellido2='$Usuario_apellido2',
Usuario_clave='$Usuario_clave',
Usuario_domicilio='$Usuario_domicilio',
Usuario_poblacion='$Usuario_poblacion',
Usuario_provincia='$Usuario_provincia',
Usuario_numero_telefono='$Usuario_numero_telefono',
Usuario_fotografia='$nombre_archivo' WHERE Usuario_id=$id";
if (mysqli_query($conn, $sql)) {
  header("Location: Modificar.php?Modificado=1&id=".$id);
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>