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
if(isset($_POST['nombre']) && $_POST['nombre']!="")
{
	$set[] = "Proveedor_Nombre = '".$_POST['nombre']."'";

}
if(isset($_POST['cif']) && $_POST['cif']!="")
{
	$set[] = "Proveedor_CIF = '".$_POST['cif']."'";

}
if(isset($_POST['contacto']) && $_POST['contacto']!="")
{
	$set[] = "Proveedor_Persona_Contacto = '".$_POST['contacto']."'";

}
if(isset($_POST['email']) && $_POST['email']!="")
{
	$set[] = "Proveedor_Email = '".$_POST['email']."'";

}
if(isset($_POST['telefono']) && $_POST['telefono']!="")
{
	$set[] = "Proveedor_Telefono = '".$_POST['telefono']."'";

}
if(isset($_POST['direccion']) && $_POST['direccion']!="")
{
	$set[] = "Proveedor_Direccion = '".$_POST['direccion']."'";

}
if(isset($_POST['url']) && $_POST['url']!="")
{
	$set[] = "Proveedor_URL = '".$_POST['url']."'";

}
if(isset($_POST['longitud']) && $_POST['longitud']!="")
{
	$set[] = "Proveedor_Longitud = '".$_POST['longitud']."'";

}
if(isset($_POST['latitud']) && $_POST['latitud']!="")
{
	$set[] = "Proveedor_Latitud = '".$_POST['latitud']."'";

}if(isset($_POST['latitud']) && $_POST['latitud']!="")
{
	$set[] = "Proveedor_Latitud = '".$_POST['latitud']."'";

}
if(isset($_FILES['fileToUpload']) && $_FILES['fileToUpload']!="")
{
	$nombre_archivo=$_POST['nombre']."_".basename($_FILES["fileToUpload"]["name"]);

	if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],"./imagenes/".$nombre_archivo)) {

	}else{
		echo "Ha ocurrido un error con la foto";
	}
	$set[] = "Proveedor_Foto = '".$nombre_archivo."'";

}




//Código para subir la foto


$sql = "UPDATE proveedores SET  ".implode(" , ",$set)." WHERE Proveedor_ID=".$id;
if (mysqli_query($conn, $sql)) {
	header("Location: ModificarN.php?Modificado=1&id=".$id);
} else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>