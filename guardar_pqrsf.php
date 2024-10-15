<?php
// Iniciar sesión
session_start();

// Verificar si se están recibiendo los datos del formulario
if(isset($_POST['respuesta']) && isset($_POST['respuesta2']) && isset($_POST['fecha']) && isset($_POST['opcion']) && isset($_POST['eps']) && isset($_POST['servicio']) && isset($_POST['poblacion']) && isset($_POST['otro-poblacion']) && isset($_POST['nombre-apellidos']) && isset($_POST['municipio']) && isset($_POST['celular']) && isset($_POST['correo']) && isset($_POST['descripcion'])) {
    // Conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "PQRSF";

    // Crear la conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar la conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Recibir y sanitizar los datos del formulario
    $respuesta = $_POST['respuesta'];
    $respuesta2 = $_POST['respuesta2'];
    $fecha = $_POST['fecha'];
    $opcion = $_POST['opcion'];
    $eps = $_POST['eps'];
    $servicio = $_POST['servicio'];
    $poblacion = $_POST['poblacion'];
    $otro_poblacion = $_POST['otro-poblacion'];
    $nombre_apellidos = $_POST['nombre-apellidos'];
    $municipio = $_POST['municipio'];
    $celular = $_POST['celular'];
    $correo = $_POST['correo'];
    $descripcion = $_POST['descripcion'];

    // Consulta SQL para insertar los datos en la tabla de la base de datos
    $sql = "INSERT INTO tabla_pqrsf (respuesta, respuesta2, fecha, opcion, eps, servicio, poblacion, otro_poblacion, nombre_apellidos, municipio, celular, correo, descripcion)
            VALUES ('$respuesta', '$respuesta2', '$fecha', '$opcion', '$eps', '$servicio', '$poblacion', '$otro_poblacion', '$nombre_apellidos', '$municipio', '$celular', '$correo', '$descripcion')";

    // Ejecutar la consulta y verificar si se realizó correctamente
    if ($conn->query($sql) === TRUE) {
        echo "<script>window.location.href = 'enviado.html';</script>";
    } else {
        echo "<div class='error-message'>Error al registrar los datos de PQRSF: " . $conn->error . "</div>";
    }

    // Cerrar la conexión a la base de datos
    $conn->close();
} else {
    echo "<div class='error-message'>Error: no se recibieron todos los datos del formulario.</div>";
}
?>
