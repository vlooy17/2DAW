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

		for ($i=0; $i < $_SESSION["cantidadBorrado"] ; $i++) { 
			if (isset($_POST["borrar".$i])) {
				$borrarid=$_POST["borrar".$i];
				$sql = "DELETE FROM proveedores WHERE Proveedor_ID=$borrarid";

				
				if (mysqli_query($conn, $sql)) {
					echo "Record deleted successfully";
				} else {
					echo "Error deleting record: " . mysqli_error($conn);
				}
			}
			
			
		}

		

		mysqli_close($conn);


?>