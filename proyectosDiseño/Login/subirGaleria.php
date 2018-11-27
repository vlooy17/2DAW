<?php
//Código para subir la foto
session_start();
$id=0;
if(isset($_GET["id"])){
    $id=$_GET["id"];
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
$nombre_archivo=$_SESSION["usu"]."_".basename($_FILES["fileToUpload"]["name"]);

if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {

$nombre_archivo=$_SESSION["usu"]."_".basename($_FILES["fileToUpload"]["name"]);
    $sql = "INSERT INTO FotosUsuario (idUsuario,Fotos) VALUES ($id,'$nombre_archivo')";
if (mysqli_query($conn, $sql)) {
	header("Location: http://vlooy17.000webhostapp.com/2DAW/Login/Galeria.php?id=$id&subida=1");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

}else{
    echo "Ha ocurrido un error con la foto";
}

?>