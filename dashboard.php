<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST['titulo'];
    $enlace = $_POST['enlace'];
    $estado = $_POST['estado'];
    $descripcion = $_POST['descripcion'];
    $fecha = $_POST['fecha'];
    

    include('conexion.php');

    $sql = "INSERT INTO transmisiones (titulo, enlace, estado, descripcion, fecha) VALUES ('$titulo', '$enlace', '$estado', '$descripcion', '$fecha')";

    if ($mysqli->query($sql) === TRUE) {
        echo "Nueva transmisión guardada.";
    } else {
        echo "Error al guardar: " . $mysqli->error;
    }

    $mysqli->close();
}
?>
