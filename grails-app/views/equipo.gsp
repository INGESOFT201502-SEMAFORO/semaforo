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
    <ul>
    <nav class="menu">
      <a href="${createLink(uri: '/home')}">Inicio</a>
      <a ref="">¿Quienes Somos?</a>
      <a ref="">Equipo</a>
      <a href="${createLink(uri: '/ingresar')}">Login</a>
    </nav>
      </ul>
  </div>
</header>

<main>
  <section id="banner">
    <img src="http://7-themes.com/data_images/out/21/6839236-traffic-light.jpg">
    <div class="container">
      <h2>Semáforo, regístrate y afilia tu vehículo!</h2>
      <p>¿Cual es el mejor seguro para tu vehículo?</p>
      <a href="#">Leer más</a>
    </div>
  </section>
  <section id="mostrar">
    <h2>Revisa todos nuestros servicios</h2>
    <p> texto que debe decir algo acerca de seguros, servicios... para que el usuario revise</p>
  </section>
  <section id="mostrar2">
    <h3>Para tener en cuenta...</h3>
    <div class="container">
      <article>
        <img src="http://www.diariodeseguros.es/wp-content/uploads/2012/01/un-37-de-os-conductores-ha-cambiado-su-seguro-de-coche-por-otro-m%C3%A1s-barato.jpg">
        <h4>a quien llamar</h4>
      </article>
      <article>
        <img src="http://1.bp.blogspot.com/-at4jSzx3s6w/VME2RUi9TaI/AAAAAAAAA_w/8lb8ePe0wBY/s1600/about-us.jpg">
        <h4>Por qué asegurar el vehículo</h4>
      </article>
      <article>
        <img src="http://www.finanzasdigital.com/wp-content/uploads/2014/06/taller-mecanico.jpg">
        <h4>cada cuanto llevar el carro al mecánico?</h4>
      </article>

    </div>

  </section>

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