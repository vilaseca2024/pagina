<?php
include 'conexion.php';
$result = mysqli_query($mysqli, "SELECT * FROM sea_noticia");
while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>
            <td>{$row['titulo']}</td>
            <td>{$row['descripcion']}</td>
            <td>{$row['fecha']}</td>
            <td><button class='btn btn-danger' onclick='eliminarNoticia({$row['id']})'>Eliminar</button></td>
          </tr>";
}
?>
