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
$formatter = new NumberFormatter('en_US', NumberFormatter::CURRENCY);

include 'pic.inc';

mysqli_set_charset($conexion,"utf8");
if (!mysqli_set_charset($conexion, "utf8")) {
    printf("Error cargando el conjunto de caracteres utf8: %s\n", mysqli_error($conexion));
}

$M="";

if(isset($_GET["M"])){ $M=$_GET["M"];}

if(isset($_POST["ID"])){ $ID=$_POST["ID"];  }
if(isset($_POST["M"])){ $M=$_POST["M"];}
if(isset($_POST["Lugar"])){ $Lugar= strtoupper ( trim ( $_POST["Lugar"])); }
if(isset($_POST["Distancia"])){ $Distancia=strtoupper ( trim ( $_POST["Distancia"])); }
if(isset($_POST["PKM"])){ $PKM=$_POST["PKM"]; }
if(isset($_POST["PDistancia"])){ $PDistancia=$_POST["PDistancia"];}


if($M==0) { //  VALOR DEL KM
    $sql="SELECT  `ValorKM` FROM `tvkm` WHERE `idvkm`=1 ; ";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        PRINT $row['ValorKM'] ;
    }
}

if($M==1){ // Listar todos los articulos
    $sql="SELECT `iddis`, `Lugar`, `distancia`,(`distancia`* `ValorKM`) as `pdis` FROM `t_distancia`,`tvkm` ORDER BY `Lugar` ASC; ";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        echo "<tr onclick='DIS(".$row['iddis'] .")'><td>".$row['Lugar'] ."</td><td>".$row['distancia'] ."</td><td>".$formatter->formatCurrency( $row['pdis'] , 'USD') ."</td></tr>";
    }
}// Fin Listar todos los articulos

if ($M==2) { // ver Cliente
     $sql= "SELECT `iddis`, `Lugar`, `distancia`,(`distancia`* `ValorKM`) as `pdis` FROM `t_distancia`,`tvkm`  WHERE `iddis`=".$ID.";";
     $segmento = mysqli_query($conexion,$sql);
     while ($row = mysqli_fetch_array($segmento)){
          print  $row["iddis"].'|'.$row["Lugar"].'|'.$row["distancia"].'|'.$formatter->formatCurrency( $row['pdis'] , 'USD');
     }
}// Fin Ver Cliente

if ($M==3) { // Graba Cliente
             if($ID>0){
                 $sql= "UPDATE `t_distancia` SET  `Lugar`='".$Lugar."',`distancia`='".$Distancia."' WHERE `iddis`=".$ID.";";
             }else{
                 $sql="INSERT INTO `t_distancia`(`Lugar`, `distancia`) VALUES ('".$Lugar."','".$Distancia."');";
             }
             $segmento = mysqli_query($conexion,$sql);
}// Fin Graba Cliente

if ($M==4) { // Borra Cliente
    $sql= "DELETE FROM `t_distancia` WHERE `iddis`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
}// Fin Borra Cliente

if ($M==10) { // Valor del KM
    $sql= "UPDATE `tvkm` SET `ValorKM`='".$PKM."' WHERE `idvkm`=1;";
    $segmento = mysqli_query($conexion,$sql);
     print $row['ValorKM'];
}// Fin Valor del KM

if($M==100) { // Listar todos los articulos
    $sql = "SELECT `iddis`, `Lugar`, `distancia`,(`distancia`* `ValorKM`) as `pdis` FROM `t_distancia`,`tvkm` ORDER BY `Lugar` ASC; ";
    $segmento = mysqli_query($conexion, $sql);

   // $SD = "888";
    while ($row = mysqli_fetch_array($segmento)) {

        $O="O('".$row['Lugar'] ."')";
        $De="De('".$row['Lugar'] ."')";
        $SD='<a class="btn btn-info C" onclick="'.$O.'">O</a><a class="btn btn-danger C" onclick="'.$De.'">D</a>';

        echo "<tr><td>" . $row['Lugar'] . "</td><td>" . $row['distancia'] . "</td><td>" . $formatter->formatCurrency($row['pdis'], 'USD') . "</td><td>" . $SD . "</td></tr>";
    }
}
    mysqli_close($conexion); 
?>