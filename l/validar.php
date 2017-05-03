<?php

$usuario = substr ( $_GET['nn'],0,8);
$pass = md5( substr (  $_GET['np'],0,8));



$usuario = substr ( $_POST['nn'],0,8);
$pass = md5( substr (  $_POST['np'],0,8));



if(empty($usuario) || empty($pass)){
	header("Location: ../index.php");
	exit();
}

$conexion = mysqli_connect("localhost","root","","re");
if (!$conexion){
    die("fallo de conexion" .mysqli_error());
}
if (!mysqli_set_charset($conexion, "utf8")) {
    printf("Error cargando el conjunto de caracteres utf8: %s\n", mysqli_error($conexion));
}
mysqli_set_charset($conexion,"utf8");


/*
mysql_connect('localhost','root','') or die("Error al conectar " . mysql_error());
mysql_select_db('re') ;
*/




$result = mysqli_query("SELECT * from ver where (( U='" . $usuario . "') and (P='".$pass."'));");

if($row = mysqli_fetch_array($result)){
	if($row['P'] ==  $pass ){
		session_start();
		$_SESSION['usuario'] = $usuario;
        $_SESSION['ok1'] = 1;
        $_SESSION['Local1'] =$row['L'];
        $_SESSION['real'] =$row['nreal'];
        $_SESSION['AMSJ']=$row['idver'];
		header("Location: ../pages/index.php");

	}else{
		header("Location: ../index.php");
		exit();
	}
}else{
	header("Location: ../index.php");
	exit();
}


?>