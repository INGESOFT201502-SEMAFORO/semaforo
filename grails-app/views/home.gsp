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
    <title>Semáforo - Inicio</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="main.js"/>
    <asset:stylesheet src="sliderSection.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>

</head>


<body>
<header>
    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
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

<section id="banner"><!-- BANNER SUPERIOR -->
    <img src="http://7-themes.com/data_images/out/21/6839236-traffic-light.jpg">
    <div class="container">
        <h2>Semáforo, regístrate y afilia tu vehículo!</h2>
        <p>¿Cual es el mejor seguro para tu vehículo?</p>
        <a href="#">Leer más</a>
    </div>
</section>
<section id="mostrar">
    <h2>¿No tienes cuenta en Semáforo?...</h2>
    <p> Regístrate fácil y rápido!</p>
</section>
<div class="container">

    <section>

        <ul class="ch-grid">
            <li>
                <div class="ch-item ch-img-1">
                    <div class="ch-info">
                        <h3>Cliente</h3>
                        <p>Obtén beneficios para tí y tu vehículo!<g:link controller="cliente" action ="register">Regístrate</g:link></p>
                    </div>
                </div>
            </li>
            <li>
                <div class="ch-item ch-img-2">
                    <div class="ch-info">
                        <h3>Vendedor</h3>
                        <p>Crea tu cuenta y ofrece tus servicios!<a href="http://drbl.in/eNXW">Regístrate</a></p>
                    </div>
                </div>
            </li>
            <li>
                <div class="ch-item ch-img-3">
                    <div class="ch-info">
                        <h3>Taller</h3>
                        <p>Haz crecer tu negocio con más clientes!<a href="http://drbl.in/eNXY">Regístrate</a></p>
                    </div>
                </div>
            </li>
        </ul>
    </section>
</div>

    <div class="container">
        <div class="main row">
            <article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                <p>
                <h3>Importancia de un Seguro de Vehículo</h3>

                Cuando se maneja un automóvil se está expuesto a todo tipo de accidentes
                y de situaciones que pueden ser lesivas para la seguridad de las personas.
                Con motivo de garantizar una reparación mínima en el caso de que exista un
                accidente, la ley establece que aquellos que tengan un vehículo a su cargo
                deban tener un seguro básico que cubra los gastos ocasionados en esas circunstancias.
                De esta manera, por ejemplo, si un auto choca a otro, la aseguradora del automóvil
                cuyo dueño es responsable deberá pagar al dueño del auto chocado la suma que cubra todos
                los gastos ocasionados. Este tipo de obligación tiene como fin que el hecho de manejar
                un auto tenga algún margen de seguridad, teniendo en cuenta que los accidentes en este
                sentido pueden ser numerosos.
            </p>
            </article>

            <aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                <p>
                <h3>Semáforo</h3>

                Creando una cuenta en Semáforo, adquieres beneficios como registrar los vehículos de los cuales
                eres propietario.  Puedes mirar las distintas ofertas de seguros de acuerdo a las características
                de tu vehículo, seleccionando la que se acomode más a tus necesidades.<br>
                </p>
            </aside>
        </div>
        <div class="row">
            <div class="color1 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-tool">Servicios</h4>
                <p>Registra y afilia tus vehículos
                al seguro que más se acomode a tu vehículo.<br><br>
                Revisa el estado de tu vehículo en el taller.<br><br>
                Pide tu cita para peritaje.</p>
            </div>
            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-us">Acerca de Nosotros</h4>
                <p>Puedes ingresar a nuestra sección "¿Quienes Somos?" del menú principal, donde definimos nuestra Misión y Visión, nuestro mode de trabajo y más información...
                <br><br><br></p>
            </div>

            <div class="color1 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-reg">Registro</h4>
                <p>Estando registrado obtienes acceso a todos nuestros beneficios.<br><br>
                Ofrece tus servicios de seguro y taller!<br><br><br></p>
            </div>

            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-team">Equipo</h4>
                <p>Integrantes del equipo que llevaron a cabo el desarrollo de este proyecto...
                <br><br><br><br><br><br></p>
            </div>
        </div>
    </div>
    </section>
    <br><br>
    <section class="slider-container"><!-- SLIDER  -->
        <ul id="slider" class="slider-wrapper">
            <li class="slide-current">
                <img src="http://i.kinja-img.com/gawker-media/image/upload/s--ygwZpFG---/c_scale,fl_progressive,q_80,w_800/18hrscdj42rlojpg.jpg" alt="Slider Imagen 1">
                <div class="caption">
                    <h3 class="caption-title">Inicia sesión o regístrate!</h3>
                    <p>Dando clic en Login puedes iniciar sesión, en caso de que no tengas cuenta, adquiere una fácil y rápido
                        registrándote</p>
                </div>
            </li>

            <li>
                <img src="http://resizer.es/photos/003.jpg" alt="Slider Imagen 1">
                <div class="caption">
                    <h3 class="caption-title">Registra y asegura tu vehículo!</h3>
                    <p>Una vez entrando en tu cuenta, puedes añadir los vehículos que posees.
                       Asegúralos en tu entidad recomendada o preferida!</p>
                </div>
            </li>

            <li>
                <img src="http://resizer.es/photos/revisiont.jpg" alt="Slider Imagen 1">
                <div class="caption">
                    <h3 class="caption-title">Revisa el estado de tu vehículo en el taller!</h3>
                    <p>Puedes ver el estado de tu vehículo en el taller y recibir notificación cuando esté listo!</p>
                </div>
            </li>

            <li>
                <img src="http://resizer.es/photos/peritajeVV.jpg" alt="Slider Imagen 1">
                <div class="caption">
                    <h3 class="caption-title">Peritaje de Vehículos</h3>
                    <p>Solicita tu cita para avaluar tu vehículo</p>
                </div>
            </li>
        </ul>

        <!-- Sombras -->
        <div class="shadow"></div>

        <!-- Controles -->
        <ul id="slider-controls" class="slider-controls"></ul>
    </section>

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