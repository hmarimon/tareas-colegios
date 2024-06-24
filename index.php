<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>

  <!-- Bootstrap 4 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://bootswatch.com/5/lumen/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>

  <div class="container vh-100 d-flex flex-column justify-content-center align-items-center">
    <div class="card">
      <div class="d-flex" style="max-width: 1000px;">
        <div class="p-4 align-self-center">
          <h1 class="fw-bold">Login</h1>
          <form class="d-flex flex-column gap-2" action="php/login.php" method="post">
            <label for="usuario" class="form-label">Nombre de usuario</label>
            <input class="form-control" type="text" id="usuario" name="usuario" placeholder="Nombre de usuario" required>
            <label for="clave" class="form-label">Contraseña</label>
            <input class="form-control" type="password" id="clave" name="clave" placeholder="Contraseña" required>
            <input class="btn btn-success" type="submit" value="Ingresar">
          </form>
        </div>
        <div class="d-none d-md-block">
          <img style="width: 300px;" src="assets/img/tareas-colegio.jpg" alt="bg-tareas-colegios">
        </div>
      </div>
    </div>
  </div>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>

</html>