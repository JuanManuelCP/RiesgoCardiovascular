<?php
session_start();

// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "PQRSF";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Recibir datos del formulario de inicio de sesión o registro
$email = $_POST['email']; 
$password = $_POST['contraseña']; 

// Verificar si se está intentando iniciar sesión o registrarse
if(isset($_POST['iniciar_sesion'])) {
    // Consultar la base de datos para verificar las credenciales (protección contra inyección SQL)
    $stmt = $conn->prepare("SELECT * FROM usuarios WHERE correo=? AND contraseña=?");
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    // Verificar si se encontró un usuario con las credenciales proporcionadas
    if ($result->num_rows > 0) {
        // Usuario autenticado, iniciar sesión y redirigir al formulario de PQRSF
        $_SESSION['email'] = $email;
        header("Location: formulario.html");
        exit();
    } else {
        // Credenciales incorrectas, redirigir al usuario de nuevo al formulario de inicio de sesión
        header("Location: index.html");
        exit();
    }
} elseif(isset($_POST['registrarse'])) {
    // Consultar si el correo ya está registrado
    $check_email_query = "SELECT * FROM usuarios WHERE correo='$email'";
    $run_query = mysqli_query($conn,$check_email_query);

    if(mysqli_num_rows($run_query) > 0){
        // El correo ya está registrado, redirigir al usuario de nuevo al formulario de registro
        header("Location: index.html");
        exit();
    } else {
        // Insertar nuevos datos de usuario en la base de datos
        $insert_user = "INSERT INTO usuarios (correo, contraseña) VALUES ('$email','$password')";
        if(mysqli_query($conn,$insert_user)){
            // Registro exitoso, redirigir al usuario a registrado.html
            header("Location: registrado.html");
            exit();
        } else {
            // Error al registrar el usuario, redirigir al usuario de nuevo al formulario de registro
            header("Location: index.html");
            exit();
        }
    }
}

// Cerrar la conexión
$conn->close();
?>
