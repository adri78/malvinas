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
$ESTADO="";
if(isset($_GET["M"])){ $M=$_GET["M"];}

if(isset($_POST["ID"])){ $ID=$_POST["ID"];  }
if(isset($_POST["M"])){ $M=$_POST["M"];}
if(isset($_POST["MOVIL"])){ $MOVIL= strtoupper ( trim ( $_POST["MOVIL"])); }
if(isset($_POST["AUTO"])){ $AUTO=strtoupper ( trim ( $_POST["AUTO"])); }
if(isset($_POST["PATENTE"])){ $PATENTE=strtoupper ( trim ( $_POST["PATENTE"])); }
if(isset($_POST["SEGURO"])){ $SEGURO=strtoupper ( trim ( $_POST["SEGURO"])); }
if(isset($_POST["MM"])){ $MM=$_POST["MM"];}
if(isset($_POST["DUE"])){ $DUE=$_POST["DUE"];}

if($M==1){ // Listar todos los Moviles
    $sql="SELECT `idm`, `movil`, `auto`, `patente`, `seguro`, `MM`, `duenio` FROM `t_movil` ORDER BY `movil` ASC;";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        if($row['MM']==0){$Estado="Sin Chofer";}
        if($row['MM']==1){$Estado="ACTIVO";}
        if($row['MM']==2){$Estado="DESACTIVADO";}
        if($row['duenio']==1){
            $DUE= 'ROLANDO' ;
        }else{
            $DUE= 'SUSANA';
        }
        echo "<tr onclick='Mov(".$row['idm'].")'><td>".$row['movil']."</td><td>".$row['auto']."</td><td>".$row['patente']."</td><td>".$row['seguro']."</td><td>".$Estado."</td><td>".$DUE."</td></tr>";
    }
}// Fin Listar todos los Moviles


if ($M==2) { // ver Movil
    $sql= "SELECT `idm`, `movil`, `auto`, `patente`, `seguro`, `MM`, `duenio` FROM `t_movil` WHERE `idm`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
             print  $row["idm"].'|'.$row["movil"].'|'.$row["auto"].'|'.$row["patente"].'|'.$row["seguro"].'|'.$row["MM"].'|'.$row["duenio"];
    }
}// Fin Ver Movil
if ($M==3) { // Graba Movil
    if($ID>0){// [value-4],`seguro`=[value-5],`MM`=[value-6],
        $sql= "UPDATE `t_movil` SET `movil`='".$MOVIL."',`auto`='".$AUTO."',`patente`='".$PATENTE."',`seguro`='".$SEGURO."',`MM`='".$MM."',`duenio`='".$DUE."'  WHERE `idm`=".$ID.";";
    }else{
        $sql="INSERT INTO `t_movil`(`movil`, `auto`, `patente`, `seguro`, `MM`, `duenio`) VALUES ('".$MOVIL."','".$AUTO."','".$PATENTE."','".$COD."','".$SEGURO."','".$MM."','".$DUE."');";
    }
    $segmento = mysqli_query($conexion,$sql);
}// Fin Graba Cliente

if ($M==4) { // Borra Cliente
    $sql= "DELETE FROM `t_movil` WHERE `idm`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
}// Fin Borra Cliente

if($M==10){ // Listar todos los Moviles
    $tmp="";
    $C="";
    $sql="SELECT `idm`, `movil`, `auto`, `patente`, `seguro`, `MM`, `duenio` FROM `t_movil` where `MM`='0'  ORDER BY `movil` ASC;";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        $tmp=$tmp."<option value=".$row['idm'].">".$row['movil']."</option>";
    }
    print $tmp;
}// Fin Listar todos los Moviles

    mysqli_close($conexion);
?>