<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>En vivos</title>
    <link href="css/inicio.css" rel="stylesheet">
</head>
<body>

<header>
   
</header>

<div class="container">
    <div class="form-container">
        <form action="dashboard.php" method="POST">
            <label for="titulo">Título de la transmisión:</label>
            <input type="text" id="titulo" name="titulo" required><br>

            <label for="enlace">ID del video de YouTube:</label>
            <input type="text" id="enlace" name="enlace" required><br>

            <label for="descripcion">Descripcion:</label>
            <input type="text" id="descripcion" name="descripcion" required><br>

            <label for="fecha">Fecha:</label>
            <input type="date" id="fecha" name="fecha" required><br>

            <label for="estado">Estado:</label>
            <select name="estado" id="estado">
                <option value="activo">Activo</option>
                <option value="en lista">En lista</option>
            </select><br>

            <input type="submit" value="Guardar transmisión">
        </form>
    </div>
    <div class="form-container">
        <form action="guardar_noticia.php" method="POST" enctype="multipart/form-data">
            <label for="titulo">Título de la noticia:</label>
            <input type="text" id="titulo" name="titulo" required><br>

            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" required></textarea><br>

            <label for="fecha">Fecha:</label>
            <input type="date" id="fecha" name="fecha" required><br>

            <label for="estado">Estado:</label>
            <select name="estado" id="estado" required>
                <option value="activo">Activo</option>
                <option value="inactivo">Inactivo</option>
            </select><br>

            <label for="imagen">Imagen de la noticia:</label>
            <input type="file" id="imagen" name="imagen" required><br>

            <input type="submit" value="Guardar noticia">
        </form>
    </div>
</div>

<script>
    function changeStream(videoId) {
        let url = "https://www.youtube.com/embed/" + videoId;
        document.getElementById('main-stream').src = url;
    }
</script>

</body>
</html>
