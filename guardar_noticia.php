<?php
// Incluir el archivo de conexión
include('conexion.php');

// Comprobar si se enviaron los datos del formulario
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Obtener los valores del formulario
    $titulo = $_POST['titulo'];
    $descripcion = $_POST['descripcion'];
    $fecha = $_POST['fecha'];
    $estado = $_POST['estado'];

    // Manejo de la imagen (subirla al servidor)
    $imagen = $_FILES['imagen']['name'];
    $imagen_temp = $_FILES['imagen']['tmp_name'];
    $imagen_path = "noticias/" . $imagen;

    if (move_uploaded_file($imagen_temp, $imagen_path)) {
        // Preparar la consulta para insertar los datos
        $query = "INSERT INTO sea_noticia (titulo, descripcion, fecha, estado, ruta_imagen) VALUES (?, ?, ?, ?, ?)";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("sssss", $titulo, $descripcion, $fecha, $estado, $imagen_path);

        // Ejecutar la consulta
        if ($stmt->execute()) {
            echo "Noticia guardada exitosamente.";
        } else {
            echo "Error al guardar la noticia: " . $stmt->error;
        }

        // Cerrar la conexión
        $stmt->close();
    } else {
        echo "Error al subir la imagen.";
    }
}

$mysqli->close();
?>
