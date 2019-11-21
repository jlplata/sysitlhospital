<?php
include'../conexion/conexion.php';
include'../sesiones/verificar_sesion.php';

$id=$_POST['ide'];
$nombreDepa=$_POST['depa'];

$fecha=date("Y-m-d"); 
$hora=date ("h:i:s");

$activo=1;

$idPersona= $_SESSION["s_idPersona"];

$actualizar=mysql_query("UPDATE departamentos 
                            SET nombre_departamento='$nombreDepa',
                                fecha_registro='$fecha',
                                hora_registro='$hora',
                                usuario_registro=$idPersona
                        WHERE id_departamento=0",$conexion) or die (mysql_error());
?>
<script>
	window.location="index.php"
</script>