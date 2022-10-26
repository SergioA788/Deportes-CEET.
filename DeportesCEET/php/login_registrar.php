<?php

include('conexion.php');

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];

//Para iniciar sesión
if(isset($_POST["btnloginx"]))
{

$queryusuario = mysqli_query($conn,"SELECT * FROM aprendiz WHERE correo = '$correo'");
$nr 		= mysqli_num_rows($queryusuario); 
$mostrar	= mysqli_fetch_array($queryusuario); 
	
if (($nr == 1) && (password_verify($contraseña,$mostrar['contraseña'])) )
	{ 
		session_start();
		$_SESSION['nombredelusuario']=$correo;
		header("Location: ../php/principal.php");
	}
else
	{
	echo "<script> alert('Usuario o contraseña incorrecto.');window.location= '../index.html' </script>";
	}
}

//Para registrar
if(isset($_POST["btnregistrarx"]))
{

$queryusuario 	= mysqli_query($conn,"SELECT * FROM aprendiz WHERE correo = '$correo'");
$nr 			= mysqli_num_rows($queryusuario); 

if ($nr == 0)
{

	$pass_fuerte = password_hash($contraseña, PASSWORD_BCRYPT);
	$queryregistrar = "INSERT INTO aprendiz(nombre,apellido,correo, contraseña) values ('$nombre','$apellido','$correo','$pass_fuerte')";
	

if(mysqli_query($conn,$queryregistrar))
{
	echo "<script> alert('Usuario registrado: $correo');window.location= '../index.html' </script>";
}
else 
{
	echo "Error: " .$queryregistrar."<br>".mysql_error($conn);
}

}else
{
		echo "<script> alert('No puedes registrar a este usuario: $correo');window.location= '../vista/sign-up.html' </script>";
}

} 
/*VaidrollTeam*/
?>