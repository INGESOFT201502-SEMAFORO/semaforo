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
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="fontello.css"/>

</head>

<body>

<header>
    <div class="container">

        <h1 class="icon-semaforo">Semáforo</h1>
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>

            <g:else>
                <a ref=#>Login</a>
            </g:else>
        </nav>

    </div>
</header>

<g:form controller="cliente" action="login" class="form-4">
    <br><br><br><br><br><br>
    <h6>Ingresar</h6>

    <p>
        <label for="login">Usuario o Email</label>
        <input type="text" name="login" placeholder="Usuario o Email" required>
    </p>
    <p>
        <label for="password">Contraseña</label>
        <input type="password" name='Contraseña' placeholder="Contraseña" required>
    </p>

    <p>
        <input type="submit" name="submit" value="Iniciar Sesión">
    </p><br>

    <a href="${createLink(uri: '/home')}">Volver</a>
</g:form>

<footer>
    <br><br><br><br>
    <div class="container">
        <p class="copy">Semáforo &copy; 2015</p>
        <div class="sociales">
            <a class="icon-fb" href="#"></a>
            <a class="icon-twitter" href="#"></a>
            <a class="icon-gp" href="#"></a>
        </div>
    </div>
</footer>

</body>
</html>