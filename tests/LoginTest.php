<?php
/* use PHPUnit\Framework\TestCase;

class LoginTest extends TestCase {
    public function testIniciarSesion() {
        // Simular datos de formulario para iniciar sesión
        $_POST['email'] = 'usuario@example.com';
        $_POST['contraseña'] = 'contraseña123';

        // Incluir el archivo login.php para poder acceder a las funciones
        require 'login.php';

        // Verificar si la sesión se inició correctamente
        $this->assertArrayHasKey('email', $_SESSION);
        $this->assertEquals('usuario@example.com', $_SESSION['email']);
    }

    public function testRegistrarse() {
        // Simular datos de formulario para registrarse
        $_POST['email'] = 'nuevousuario@example.com';
        $_POST['contraseña'] = 'contraseña456';
        $_POST['registrarse'] = true;

        // Incluir el archivo login.php para poder acceder a las funciones
        require 'login.php';

        // Verificar si el usuario se registró correctamente
        // Esto asume que la base de datos está correctamente configurada para permitir registros
        // y que no hay un usuario existente con el mismo correo electrónico en la base de datos de prueba
        $this->assertEquals('index.html?registro_exitoso=true', $GLOBALS['header']);
    }
} 
?>
