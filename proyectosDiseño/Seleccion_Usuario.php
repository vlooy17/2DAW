
<!DOCTYPE html>
<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "prueba";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$clave = $_POST["clave"];


$sql = "SELECT idusuarios, nombre_usuarios, clave FROM usuarios
WHERE clave LIKE '$clave'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
     while($row = $result->fetch_assoc()) {
        echo "<br> id: ". $row["idusuarios"]. " - Nombre: ". $row["nombre_usuarios"]. " ,contraseña: " . $row["clave"] . "<br>";
    }
} else {
    echo "No hay usuarios";
}

mysqli_close($conn);
  



?> 

</body>
</html>

