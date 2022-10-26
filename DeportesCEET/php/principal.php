<?php
include('conexion.php');
session_start();

if(isset($_SESSION['nombredelusuario']))
{
	$usuarioingresado = $_SESSION['nombredelusuario'];
	echo "<script> alert('Bienvenido a Deportes CEET');window.location= 'https://depoceet.000webhostapp.com/deportes/index.html' </script>";
}
else
{
	header('location: ../index.html');
}
if(isset($_POST['btncerrar']))
{
	session_destroy();
	header('location: ../index.html');
}
	
?>

</div>

</div>