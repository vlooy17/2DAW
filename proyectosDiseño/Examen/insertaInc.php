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

$Proveedor_Id=$_POST["desp"];
$Latitud=$_POST["latitud"];
$Longitud=$_POST["longitud"];
//Código para subir la foto
$nombre_archivo=$Proveedor_Id."_".basename($_FILES["fileToUpload"]["name"]);

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {
  

}else{
    echo "Ha ocurrido un error con la foto";
}

$sql = "INSERT INTO  FotosIncidencia (idProveedor,Foto,Latitud,Longitud)
VALUES ($Proveedor_Id,'$nombre_archivo','$Latitud','$Longitud')";
if (mysqli_query($conn, $sql)) {

    header("Location: AgregarIn.php?Duda=1");

} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>