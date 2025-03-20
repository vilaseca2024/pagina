<?php
 
    $mysqli = new mysqli("localhost", "root", "", "seguridad_en_accion");
    if ($mysqli->connect_error) {
        die("Conexión fallida: " . $mysqli->connect_error);
    }
?>