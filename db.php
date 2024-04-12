<?php

    $serverName = "i-091b213fad72beb7a (AgroWeb)";
    $userName = "ubuntu";
    $password = "Tchag@2000";
    $dbName = "agroculture";

    $conn = mysqli_connect($serverName, $userName, $password, $dbName);
    if (!$conn)
    {
        die("Connection failed: " . mysqli_connect_error());
    }

?>
