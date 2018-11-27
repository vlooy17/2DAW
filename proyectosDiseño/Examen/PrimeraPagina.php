<!DOCTYPE html>
<html lang="en">
<head>
  <title>Página de regristo</title>
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

<body>
 <h2>Acceso</h2>
 <div class="container">

  <form method="POST" action="log.php">
    <div class="form-group">
      <label for="nombre">Nombre:</label>
      <input type="text" class="form-control" id="nombre" placeholder="Introduzca nombre" name="nombre">
    </div>
    <div class="form-group">
      <label for="clave">Contraseña:</label>
      <input type="pwd" class="form-control" id="clave" placeholder="Introduzca contraseña" name="clave">
    </div>
    <button type="submit" class="btn btn-default">Login</button>
  </form>
  <div>
    <p>¿No estas registrado? <a href="https://vlooy17.000webhostapp.com/2DAW/Examen/DarAlta.html"><button type="submit" >Registrarse</button></a></p>
  </div>
  <?php
  $er=0;
$re=0;
  if(isset($_GET["error"])){
    $er=$_GET["error"];
  }else{

  }
  if ($er==1) {
    echo "Usted no esta registrado";
  }
    if ($er==2) {
    echo "Usuario bloqueado";
    
  }
  if(isset($_GET["Registro"])){
    $re=$_GET["Registro"];
  }else{

  }if ($re==1){
    echo "Revise su corre para confirmar la cuenta";
  }

  ?>
</div>

</body>
</html>

</form>
</body>
</html>