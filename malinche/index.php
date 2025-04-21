<?php
include "configs/config.php";
include "configs/funciones.php";
	
if(!isset($p)){
	$p = "principal";
}else{
	$p = $p;
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="css/estilo.css"/>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet" href="fontawesome/css/all.css"/>
	<link rel="stylesheet" href="css/estilosf.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="fontawesome/js/all.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
	<title>Las Joyas de la Malinche</title>
</head>
<body>
	<div class="header">
		Las Joyas de la Malinche
	</div>
	<div class="menu">
		<a href="?p=principal">Principal</a>
		<a href="?p=productos">Productos</a>
		<a href="?p=ofertas">Ofertas</a>
		<a href="?p=carrito">Carrito</a>
		<a href="?p=miscompras">Mis Compras</a>
		<!--
		<a href="?p=admin">Administrador</a>
		-->

		<?php
			if(isset($_SESSION['id_cliente'])){
		?>

		<a class="pull-right subir" href="?p=salir">Salir</a>
		<a class="pull-right subir" href="#"><?=nombre_cliente($_SESSION['id_cliente'])?></a>

		<?php
			}
		?>
	</div>
	<div class="cuerpo">
		<?php
			if(file_exists("modulos/".$p.".php")){
				include "modulos/".$p.".php";
			}else{
				echo "<i>No se ha encontrado el modulo <b>".$p."</b> <a href='./'>Regresar</a></i>";
			}
		?>
	</div>


	<div class="footer">
		Copyright Las Joyas de la Malinche | Todos los derechos reservados. &copy; <?=date("Y")?>
	</div>

	<footer>
		<div class="container-footer-all">
        
            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de Las joyas de la Malinche</h1>

                    <p>“Las Joyas de la Malinche” es una joyería en línea que se dedica a la venta de bisuteria construida principalmente con obsidiana.
					El objetivo es la venta a nivel nacional con métodos de pago en línea teniendo variedad de precios ofertando bisutería tanto a un nivel socioeconómico medio-alto o medio-bajo, ofreciendo siempre productos de la más alta calidad a un precio altamente competitivo, cuidando así la economía de nuestros clientes.
					</p>

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                        <a href="https://www.facebook.com/"><img src="icon/facebook.png"></a>
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                        <a href="https://twitter.com/login?lang=es"><img src="icon/twitter.png"></a>
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                        <a href="https://www.instagram.com/?hl=es-la"><img src="icon/instagram.png"></a>
                        <label>Siguenos en Instagram</label>
                    </div>
                    <div class="row">
                        <img src="icon/google-plus.png">
                        <label>Siguenos en Google Plus</label>
                    </div>
                    <div class="row">
                        <a href="https://www.pinterest.com.mx/"><img src="icon/pinterest.png"></a>
                        <label>Siguenos en Pinteres</label>
                    </div>


                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="icon/house.png">
                        <label>Los Olivos, 
                        Ciudad de Mexico
                        Roble
                        Casa # 27</label>
                    </div>

                    <div class="row2">
                        <img src="icon/smartphone.png">
                        <label>+52-666-666-666</label>
                    </div>

                    <div class="row2">
                        <img src="icon/contact.png">
                         <label>pumasmau13@gmail.com</label>
                    </div>

                </div>

            </div>
        
        </div>
        
        <div class="container-footer">
               <div class="footer">
                    <div class="copyright">
                        © 2019 Todos los Derechos Reservados | <a href="">Martínez Rodríguez Oscar Mauricio y Muñoz Lopez Jesus Martin</a>
                    </div>

                    <div class="information">
                        <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                    </div>
                </div>

            </div>


	</footer>

</body>
</html>