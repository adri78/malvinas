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
if(isset($_POST["COD"])){ $COD= strtoupper ( trim ( $_POST["COD"])); }
if(isset($_POST["CLI"])){ $CLI=strtoupper ( trim ( $_POST["CLI"])); }
if(isset($_POST["TEL"])){ $TEL=$_POST["TEL"]; }
if(isset($_POST["DIRE"])){ $DIRE=strtoupper ( trim ( $_POST["DIRE"])); }



if($M==1){ // Listar todos los articulos
    $sql="SELECT `idcli`, `Cliente`, `Telefono`, `Domicilio`, `Codigo` FROM `t_clientes` ORDER BY `Cliente` ASC;";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        echo "<tr onclick='Cli(".$row['idcli'] .")'><td>".$row['Codigo'] ."</td><td>".$row['Cliente'] ."</td><td>".$row['Telefono'] ."</td><td>".$row['Domicilio'] ."</td></tr>";
    }
}// Fin Listar todos los articulos



if ($M==2) { // ver Cliente
    $sql= "SELECT `idcli`, `Cliente`, `Telefono`, `Domicilio`, `Codigo` FROM `t_clientes` WHERE `idcli`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
             print  $row["idcli"].'|'.$row["Cliente"].'|'.$row["Telefono"].'|'.$row["Domicilio"].'|'.$row["Codigo"];
    }
}// Fin Ver Cliente
if ($M==3) { // Graba Cliente
    if($ID>0){
        $sql= "UPDATE `t_clientes` SET `Cliente`='".$CLI."',`Telefono`='".$TEL."',`Domicilio`='".$DIRE."',`Codigo`='".$COD."'  WHERE `idcli`=".$ID.";";
    }else{
        $sql="INSERT INTO `t_clientes`( `Cliente`, `Telefono`, `Domicilio`, `Codigo`) VALUES ('".$CLI."','".$TEL."','".$DIRE."','".$COD."');";
    }
    $segmento = mysqli_query($conexion,$sql);
}// Fin Graba Cliente

if ($M==4) { // Borra Cliente
    $sql= "DELETE FROM `t_clientes` WHERE `idcli`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
}// Fin Borra Cliente

    mysqli_close($conexion);
?>