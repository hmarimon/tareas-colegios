<?php
session_start();
session_unset();
session_destroy();

// Redirigir a login
echo "<script>
        window.location.href = 'http://localhost/tareas-colegios/';
        </script>";
exit();
