
<!DOCTYPE html>
<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "prueba";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT idusuarios, nombre_usuarios, clave FROM usuarios";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br> id: ". $row["idusuarios"]. " - Nombre: ". $row["nombre_usuarios"]. " contraseña" . $row["clave"] . "<br>";
    }
} else {
    echo "No hay usuarios";
}

$conn->close();
?> 

</body>
</html>