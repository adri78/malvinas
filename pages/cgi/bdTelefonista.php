<?php
/**
 * Created by PhpStorm.
 * User: Server64
 * Date: 20/04/2017
 * Time: 11:37
 */
// error_reporting(0);
date_default_timezone_set('America/Argentina/Buenos_Aires');
$HOY = date("Y-m-d H:i:s");

include 'pic.inc';

mysqli_set_charset($conexion,"utf8");
if (!mysqli_set_charset($conexion, "utf8")) {
    printf("Error cargando el conjunto de caracteres utf8: %s\n", mysqli_error($conexion));
}

$M="";

if(isset($_GET["M"])){ $M=$_GET["M"];}

if(isset($_POST["ID"])){ $ID=$_POST["ID"];  }
if(isset($_POST["M"])){ $M=$_POST["M"];}
if(isset($_POST["Celu"])){ $Celu= strtoupper ( trim ( $_POST["Celu"])); }
if(isset($_POST["Nombre"])){ $Nombre=strtoupper ( trim ( $_POST["Nombre"])); }
if(isset($_POST["TEL"])){ $TEL=$_POST["TEL"]; }
if(isset($_POST["DNI"])){ $DNI=$_POST["DNI"];}
if(isset($_POST["Domicilio"])){ $Domicilio=strtoupper ( trim ( $_POST["Domicilio"])); }
if(isset($_POST["MC"])){ $MC=strtoupper ( trim ( $_POST["MC"])); }

if($M==1){ // Listar todos los articulos
    $sql="SELECT `idop`, `Nombre`, `Tel`, `DNI`, `Domicilio`, `tipo` FROM `t_operadora` ORDER BY `Nombre` Asc; ";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){

        echo "<tr onclick='OPE(".$row['idop'] .")'><td>".$row['Nombre'] ."</td><td>".$row['Tel'] ."</td><td>".$row['Domicilio'] ."</td></tr>";
    }
}// Fin Listar todos los articulos

if ($M==2) { // ver Cliente
     $sql= "SELECT `idop`, `Nombre`, `Tel`, `DNI`, `Domicilio`, `tipo` FROM `t_operadora` WHERE `idop`=".$ID.";";
     $segmento = mysqli_query($conexion,$sql);
     while ($row = mysqli_fetch_array($segmento)){
          print  $row["idop"].'|'.$row["Nombre"].'|'.$row["Tel"].'|'.$row["DNI"].'|'.$row["Domicilio"];
     }
}// Fin Ver Cliente

if ($M==3) { // Graba Cliente
   if($ID>0){
      $sql="UPDATE `t_operadora` SET `Nombre`='".$Nombre."',`Tel`='".$TEL."',`DNI`='".$DNI."',`Domicilio`='".$Domicilio."',`tipo`='1' WHERE `idop`=".$ID.";";
   }else{
      $sql="INSERT INTO `t_operadora`(`Nombre`, `Tel`, `DNI`, `Domicilio`, `tipo`) VALUES ('".$Nombre."','".$TEL."','".$DNI."','".$Domicilio."','1');";
  }
   $segmento = mysqli_query($conexion,$sql);
}// Fin Graba Cliente

if ($M==4) { // Borra Cliente
    $sql= "DELETE FROM `t_operadora` WHERE `idop`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
}// Fin Borra Cliente

    mysqli_close($conexion); 
?>