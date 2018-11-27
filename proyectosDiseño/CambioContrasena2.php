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

$nick = $_POST["nick"];
$clave = $_POST["clave"];
$clave1 = $_POST["clave1"];
if($clave == $clave1){
  $sql = "UPDATE usuarios SET clave='$clave' WHERE nombre_usuarios LIKE '$nick'";

if (mysqli_query($conn, $sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

}else{
    echo "Las claves no coinciden";
}


mysqli_close($conn);
?>

</body>
</html>