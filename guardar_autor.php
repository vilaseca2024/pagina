<?php
require 'conexion.php'; 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST['titulo'];
    $subtitulo = $_POST['subtitulo'];
    $descripcion = $_POST['descripcion'];
    $fecha = $_POST['fecha'];
    $categoria = $_POST['categoria'];
    $estado = $_POST['estado'];
    $autor = $_POST['autor'];
    $estrellas = intval($_POST['estrellas']);
    if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] == 0) {
        $directorio = "uploads/";
        if (!is_dir($directorio)) {
            mkdir($directorio, 0777, true); 
        }

        $nombreImagen = basename($_FILES["imagen"]["name"]);
        $rutaImagen = $directorio . $nombreImagen;
        if (move_uploaded_file($_FILES["imagen"]["tmp_name"], $rutaImagen)) {
            $sql = "INSERT INTO sea_autores (titulo, subtitulo, descripcion, fecha, categoria, ruta_imagen, estado, autor, estrellas) 
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $mysqli->prepare($sql);
            $stmt->bind_param("ssssssssi", $titulo, $subtitulo, $descripcion, $fecha, $categoria, $rutaImagen, $estado, $autor, $estrellas);

            if ($stmt->execute()) {
                echo "Autor guardado correctamente.";
            } else {
                echo "Error al guardar: " . $stmt->error;
            }
        } else {
            echo "Error al subir la imagen.";
        }
    } else {
        echo "No se subió ninguna imagen o hubo un error.";
    }
}
?>
