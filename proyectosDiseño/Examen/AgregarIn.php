<?php
$duda=0;
if(isset($_GET["Duda"])){
    $duda=$_GET["Duda"];
  }else{

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
$consulta = "SELECT * FROM proveedores";
$rs = mysqli_query($conn,$consulta);
?>
<html lang="en">
<head>
  <title>Servicio de indicencia</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  body{
    background-color: white !important;
  }
  h2{
    background-color: #245658 !important;
    margin-top: 0%;
    color: white;
    height: 70px;
    padding-top:15px;
    padding-left: 2%;

  }
  ::placeholder { color: #245658 !important;
                  opacity: 0.60 !important; 
  }
  label{
    color: #245658;
    text-shadow: 1;
  }
  input{
    width: 50% !important;
  }
  button{
    background-color: #245658 !important;
    color: white !important;
  }
</style>
<script>
  </script>

<body>
 <h2>Servicio de incidencias</h2>
<div class="container">
 
  <form method="POST" action="insertaInc.php" enctype="multipart/form-data">
    <div class="form-group">
      <label for="desp">Proveedor:</label>
      <select  name ='desp'>
        <option value=''></option>
        <?php
            if (mysqli_num_rows($rs) > 0) {

                while($row = mysqli_fetch_assoc($rs)) {

                    echo"<option value='".$row["Proveedor_ID"]."'>".$row["Proveedor_CIF"]."</option>";
                }
            }
            
        ?>
        </select>
    <div class="form-group">
      <label for="latitud">Latitud:</label>
        <input type="text" class="form-control" id="latitud" placeholder="Introduzca Latitud" name="latitud">
    </div>
    <div class="form-group">
      <label for="longitud">Longitud:</label>
        <input type="text" class="form-control" id="longitud" placeholder="Introduzca longitud" name="longitud">
    </div>
    <div>
				<label for="foto" >Introduzca su fotografía</label><br>
				<input type="file" id="fileToUpload" name="fileToUpload" value= <?php echo $row["Proveedor_Foto"]?>  ><br>
		</div>
    <button type="submit" class="btn btn-default">Enviar incidencia</button>
  </form>
   
</div>
<?php
if($duda==1){

    echo "Incidencia enviada con exito";
    echo "<br>";
  }
  echo "<a href='administrador.php'><button  class='btn btn-default'>Inicio</button></a>";
?>

</body>
</html>