<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 1/11/2015
  Time: 8:36 PM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
  <title>Semáforo - Equipo</title>
  <meta charset="UTF-8">
  <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
  <asset:stylesheet src="fontello.css"/>
  <asset:stylesheet src="estilos.css"/>

</head>


<body>

<header>
  <div class="container">

    <h1 class="icon-semaforo">Semáforo</h1>
    <input type="checkbox" id="menu-bar">
    <label class="icon-menu" for="menu-bar"></label>

    <nav class="menu">
      <a href="${createLink(uri: '/home')}">Inicio</a>
      <a href="">¿Quienes Somos?</a>
      <a ref=#>Equipo</a>
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
        <a href="${createLink(uri: '/ingresar')}">Login</a>
      </g:else>
    </nav>

  </div>
</header>

<main>


</main>

<footer>
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