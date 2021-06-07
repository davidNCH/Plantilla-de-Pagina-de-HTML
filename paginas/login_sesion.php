<?php
/*$servidor="localhost:3306";
$usuario="root";
$contraseña="";
$bdatos="emp_sensoractive";

$con=mysqli_connect($servidor,$usuario,$contraseña,$bdatos);

$consulta="select * from producto";
$result=mysqli_query($con,$consulta);

while($reg=mysqli_fetch_array($result)){
echo $reg[0];
}*/
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Menú </title>
	<link rel="stylesheet" href="https://cdn.rawgit.com/olton/Metro-UI-CSS/master/build/css/metro-icons.min.css">
	<link rel="stylesheet" href="../css/estilogsesion.css">
</head>
<body>

	<div class="container">
		<span class="mif-chevron-left mif-3x boton"></span>
		<nav>
			<ul id="menu_principal">

				<li><a href="../paginas/login.html"><span class="mif-home mif-3x principales"></span>Inicio</a></li>

				<li>
					<label for="drop-1">
						<span class="mif-cart mif-3x principales"></span>
						 Productos
						<span class="mif-chevron-right mif-2x derecha"></span>
						<span class="mif-expand-more mif-2x derecha"></span>
					</label>
					<input type="checkbox" id="drop-1">

					<ul>
						<li><a href="">Agregar Producto </a></li>
						<li><a href="">Actualizar Producto </a></li>
						<li><a href="">Eliminar Producto </a></li>
						<li><a href="">Buscar  Producto </a></li>
						<li><a href="">por ver</a></li>
					</ul>
				</li>


				<li>
					<label for="drop-2">
						<span class="mif-widgets mif-3x principales"></span>
						Servicios
						<span class="mif-chevron-right mif-2x derecha"></span>
						<span class="mif-expand-more mif-2x derecha"></span>
					</label>
					
					<input type="checkbox" id="drop-2">
					<ul>
						<li><a href=""> Instalacion De Camaras</a></li>

						<!--<li>
							<!--<label for="drop-3">
				            <li><a href="">Mantenimiento  De Camaras</a></li>
								
								<!--<span class="mif-chevron-right mif-2x derecha"></span>
								<span class="mif-expand-more mif-2x derecha"></span
							</label>-->
							<!--<input type="checkbox" id="drop-3">
							<ul>
								<li><a href="">Elemento 1</a></li>
								<li><a href="">Elemento 2</a></li>
								<li><a href="">Elemento 3</a></li>
								<li><a href="">Elemento 4</a></li>
								<li><a href="">Elemento 5</a></li>
							</ul>
						</li>-->
						<li><a href="">Mantenimiento Camaras</a></li>
						
						<li><a href="">Mantenimiento General</a></li>
					</ul>
					
				</li>
				
				<li><a href=""><span class="mif-organization mif-3x principales"></span>SALIR</a></li>
			<!--	<li><a href=""><span class="mif-contacts-mail mif-3x principales"></span>Contacto</a></li>-->
			</ul>
		</nav>
	</div>



	<script src="../js/jsesion.js"></script>
</body>
</html>

<?php
echo "salir";
?>