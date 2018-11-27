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

if(isset($_SESSION["perfil"])){
	if($_SESSION["perfil"]=="admin"){


		for ($i=0; $i < $_SESSION["cantidadBorrado"] ; $i++) { 
			if (isset($_POST["borrar".$i])) {
				$borrarid=$_POST["borrar".$i];
				$sql = "DELETE FROM usuarios WHERE Usuario_id=$borrarid";

				
				if (mysqli_query($conn, $sql)) {
					echo "Record deleted successfully";
				} else {
					echo "Error deleting record: " . mysqli_error($conn);
				}
			}
			
			
		}

		

		mysqli_close($conn);




	}else{

		header("Location: Cliente.php");
	}
}else{
	header("Location: Login1.html");
}

?>