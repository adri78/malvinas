<?php
/**
 * Created by PhpStorm.
 * User: Server64
 * Date: 26/04/2017
 * Time: 8:15
 */

$op="1";

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
if(isset($_POST["IDA"])){ $IDA=$_POST["IDA"];}
if(isset($_POST["IDCH"])){ $IDCH=$_POST["IDCH"];}
if(isset($_POST["KMINI"])){ $KMINI=$_POST["KMINI"];}


IF($M==1){ // Busco si el auto estaba de turno
    $sql="SELECT COUNT(`idtur`)as hay FROM `t_turno` WHERE (`estado`='1') and (`autoid`= '".$ID."');";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        print $row["hay"] ;
    }
}
IF($M==2){ // Busco si el chofer estaba de turno
    $sql="SELECT COUNT(`idtur`)as hay FROM `t_turno` WHERE (`estado`='1') and (`choid`= '".$ID."');";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        print $row["hay"] ;
    }
}
IF($M==3){ // Activa auto
    $sql="UPDATE `t_movil` SET `MM`='1' WHERE `idm`='".$ID."';";
    $segmento = mysqli_query($conexion,$sql);
}

IF($M==4){ // Activa chofer
    $sql="UPDATE `t_chofer` SET `Status`='2' WHERE `idch`='".$ID."';";
    $segmento = mysqli_query($conexion,$sql);
}

IF($M==100){ // Crea turno
    $sql="INSERT INTO `t_turno`(`choid`, `autoid`, `feini`, `fecie`, `kmini`, `kmfin`, `um`,`umt`, `opini`, `opfin`, `monto`, `estado`) VALUES ('";
    $sql=$sql.$IDCH."','".$IDA."','".$HOY."','".$HOY."','".$KMINI."','0','0',".$HOY."','".$op."','0','0','1');";
    $segmento = mysqli_query($conexion,$sql);
}

IF($M==101){ // Lista todos los turno activos
    $sql="SELECT `idtur`, (SELECT `Nombre` FROM `t_chofer` WHERE `idch`= `choid`) as chofer , (SELECT `movil` FROM `t_movil` WHERE `idm`=`autoid`) as auto, `kmini`, `um`, `umt` FROM `t_turno` WHERE (`estado` =1) ORDER BY `umt`,`um` ASC ;";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        if($row["um"] ==0){
            $BOTON="<button class='btn btn-info'>Activo</button>";
        }
        print '<tr data-id="'.$row["idtur"].'" data-t="'.$row["umt"].'" ><td>'.$row["auto"]."</td><td>".$row["chofer"]."</td><td>".$BOTON."</td><td> 0</td></tr>" ;
    }
}

mysqli_close($conexion);
?>