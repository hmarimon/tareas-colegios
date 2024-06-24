<?php
include('../conn/conn.php');
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $usuario = $_POST["usuario"];
  $clave = $_POST["clave"];

  $sql = "SELECT * FROM tbl_user WHERE usuario = :usuario";
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':usuario', $usuario, PDO::PARAM_STR);
  $stmt->execute();
  $user = $stmt->fetch(PDO::FETCH_ASSOC);

  if ($user && $clave == $user['clave']) {

    $_SESSION['user'] = $usuario;

    echo "<script>
        window.location.href = 'http://localhost/tareas-colegios/home.php';
        </script>";
    exit();
  } else {

    echo "<script>
            alert('Credenciales incorrectas!');
            window.location.href = 'http://localhost/tareas-colegios/';
            </script>";
  }

  $conn = null;
}
