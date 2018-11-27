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
        $sql = "SELECT * FROM incidencia";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)) {
      
            echo "Latidusd".$row["Latitud"]." Longitud".$row["Longitud"];
            echo "<br>";
        
        }
        ?>