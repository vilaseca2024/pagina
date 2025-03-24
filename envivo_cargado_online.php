<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="d-flex">
    <nav class="bg-dark text-white p-3" style="width: 250px; min-height: 100vh;">
        <h4>Admin Dashboard</h4>
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link text-white" href="#" onclick="showSection('noticias')">Noticias</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="#" onclick="showSection('transmisiones')">Transmisiones</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="#" onclick="showSection('blogs')">Blogs</a></li>
        </ul>
    </nav>

    <div class="container p-4" style="flex-grow: 1;">
        <div id="noticias" class="section">
            <h2>Noticias</h2>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalNoticias">Agregar Noticia</button>
            <table class="table mt-3">
                <thead>
                    <tr><th>Título</th><th>Descripción</th><th>Fecha</th><th>Acciones</th></tr>
                </thead>
                <tbody id="tablaNoticias"></tbody>
            </table>
        </div>
        <div id="transmisiones" class="section" style="display: none;">
            <h2>Transmisiones</h2>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalTransmisiones">Agregar Transmisión</button>
            <table class="table mt-3">
                <thead>
                    <tr><th>Título</th><th>ID YouTube</th><th>Fecha</th><th>Acciones</th></tr>
                </thead>
                <tbody id="tablaTransmisiones"></tbody>
            </table>
        </div>
        <div id="blogs" class="section" style="display: none;">
            <h2>Blogs</h2>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalBlogs">Agregar Blog</button>
            <table class="table mt-3">
                <thead>
                    <tr><th>Título</th><th>Descripción</th><th>Fecha</th><th>Acciones</th></tr>
                </thead>
                <tbody id="tablaBlogs"></tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="modalNoticias">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Agregar Noticia</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form id="formNoticia">
                    <label>Título:</label><input type="text" id="titulo" class="form-control" required><br>
                    <label>Descripción:</label><textarea id="descripcion" class="form-control" required></textarea><br>
                    <label>Fecha:</label><input type="date" id="fecha" class="form-control" required><br>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
function showSection(section) {
    $(".section").hide();
    $("#" + section).show();
}
function cargarNoticias() {
    $.get("cargar_noticias.php", function(data) {
        $("#tablaNoticias").html(data);
    });
}
$("#formNoticia").submit(function(e) {
    e.preventDefault();
    $.post("guardar_noticia.php", {
        titulo: $("#titulo").val(),
        descripcion: $("#descripcion").val(),
        fecha: $("#fecha").val()
    }, function() {
        cargarNoticias();
        $("#modalNoticias").modal("hide");
    });
});
function eliminarNoticia(id) {
    if (confirm("¿Seguro que deseas eliminar esta noticia?")) {
        $.post("eliminar_noticia.php", { id: id }, function() {
            cargarNoticias();
        });
    }
}
$(document).ready(function() {
    cargarNoticias();
});
</script>

</body>
</html>
