<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 6/11/2015
  Time: 2:29 AM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <title>Semáforo - Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <asset:stylesheet src="loginStyle.css"/>

</head>

<body>
<form class="form-4">
    <h1>Ingresar</h1>
    <p>
        <label for="login">Usuario o Email</label>
        <input type="text" name="login" placeholder="Usuario o Email" required>
    </p>
    <p>
        <label for="password">Contraseña</label>
        <input type="password" name='Contraseña' placeholder="Contraseña" required>
    </p>

    <p>
        <input type="submit" name="submit" value="Continue">
    </p><br>

    <a href="${createLink(uri: '/home')}">Volver</a>
</form>

</body>
</html>