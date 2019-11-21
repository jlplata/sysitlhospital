<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Administración</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- bootstrap 4-->
	<link rel="stylesheet" type="text/css" href="../plugins/bootstrap/css/bootstrap.min.css">
	<!-- fontawesome -->
	<link rel="stylesheet" href="../plugins/fontawesome-free-5.8.1-web/css/all.min.css">
	<!-- Estilo personalizado -->
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<!-- bootstrap-toggle-master -->
	<link href="../plugins/bootstrap-toggle-master/css/bootstrap-toggle.css" rel="stylesheet">
	<link href="../plugins/bootstrap-toggle-master/stylesheet.css" rel="stylesheet">
	<!-- alertify -->
	<link href="../plugins/alertifyjs/css/alertify.css" rel="stylesheet">	
	<link href="../plugins/alertifyjs/css/themes/default.css" rel="stylesheet">	
	<!-- animate -->
	<link rel="stylesheet" href="../plugins/animate/animate.css">
</head>
<body>
	<header>
		<!-- encabezado -->
		<?php include'../layout/encabezado.php';?>
		<!-- encabezado -->
	</header><!-- /header -->	
	<div class="container-fluid tamContenido" >
		<div class="row">
			<div class="col-xs-0 col-sm-3 col-md-2 col-lg-2 vertical">
			<!-- sidebar -->
			<?php include'../layout/sidebar.php';?>
			<!-- sidebar -->
			</div>

				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

					<div class="col-xs-12 col-sm-9 col-md-10 col-lg-10 cont">
			   			<div class="titulo borde sombra">
			        		<h3 class="animated zoomIn tPrincipal">Cajas de enlaces</h3>
			   			</div>	
			   			<div class="contenido borde sombra" style="padding-right:18px;">

			   			<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										Opcion #1
									</a>
								</h4>
							</div>

							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
										<div class="caja animated flipInX">
											<i class="fas fa-adjust"></i>
												<p><a href="../mDepartamentos" class="cenlace">Departamentos</a></p>
										</div>
									</div>
									<div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
										<div class="caja animated flipInX">
											<i class="fab fa-aws"></i>
											<p><a href="#" class="cenlace">Nombre modulo 2</a></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
			</div>	
			</div>			
		</div>
	</div>
	<footer class="fondo">
	<?php include'../layout/pie.php';?>
	</footer>

	<div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title  tPrincipal">Información de usuario</h3>
				</div>
				<div class="modal-body animated flipInX">
						<img src="../imagenes/avatar.jpg" class="img-thumbnail mImg">
						<h4 class="tPrincipal colorLetra centrar">
							Plantilla base
						</h4>

						<h4 class="tPrincipal colorLetra centrar">
						<?php echo $nLargo ?>
						</h4>

						<h4 class="tPrincipal colorLetra centrar">
							Empresa / Institución
						</h4>
				</div>
			</div>
		</div>
	</div>

	<!-- SCRIPT JAVASCRIPT -->

	<!-- jquery -->
	<script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- alertify -->
	<script src="../plugins/alertifyjs/alertify.js"></script>
	<!-- bootstrap -->
	<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- preloaders -->
	<script src="../plugins/Preloaders/jquery.preloaders.js"></script>
	<!-- bootstrap-toggle-master -->
	<script src="../plugins/bootstrap-toggle-master/doc/script.js"></script>
	<script src="../plugins/bootstrap-toggle-master/js/bootstrap-toggle.js"></script>
	<!-- Scripts personalizados -->
	<script src="../js/menu.js"></script>
	<script src="../js/precarga.js"></script>
	<script src="../js/salir.js"></script>

</body>
</html>