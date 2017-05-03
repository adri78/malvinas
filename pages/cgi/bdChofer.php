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
if(isset($_POST["REG"])){ $REG=$_POST["REG"];}
if(isset($_POST["Domicilio"])){ $Domicilio=strtoupper ( trim ( $_POST["Domicilio"])); }
if(isset($_POST["MC"])){ $MC=strtoupper ( trim ( $_POST["MC"])); }

if($M==1){ // Listar todos los articulos
    $sql="SELECT `idch`, `Nombre`, `Celu`, `Tel`, `Reg`, `Domicilio`, `Status` FROM `t_chofer` ORDER BY `Nombre` ASC ; ";
    $segmento = mysqli_query($conexion,$sql);
    while ($row = mysqli_fetch_array($segmento)){
        if($row['Status']==0){$Estado="Esperando";}
        if($row['Status']==1){$Estado="Trabajando";}
        if($row['Status']==2){$Estado="Libre";}
        if($row['Status']==3){$Estado="Suspendido";}
        echo "<tr onclick='CHO(".$row['idch'] .")'><td>".$row['Nombre'] ."</td><td>".$row['Celu'] ."</td><td>".$Estado."</td><td>".$row['Domicilio'] ."</td></tr>";
    }
}// Fin Listar todos los articulos

if ($M==2) { // ver Cliente
     $sql= "SELECT `idch`, `Nombre`, `Celu`, `Tel`, `Reg`, `Domicilio`, `Status` FROM `t_chofer` WHERE `idch`=".$ID.";";
     $segmento = mysqli_query($conexion,$sql);
     while ($row = mysqli_fetch_array($segmento)){
          print  $row["idch"].'|'.$row["Nombre"].'|'.$row["Celu"].'|'.$row["Domicilio"].'|'.$row["Tel"].'|'.$row["Reg"].'|'.$row["Status"];
     }
}// Fin Ver Cliente

if ($M==3) { // Graba Cliente
             if($ID>0){
                 $sql= "UPDATE `t_chofer` SET `Nombre`='".$Nombre."',`Celu`='".$Celu."',`Tel`='".$TEL."',`Reg`='".$REG."',`Domicilio`='".$Domicilio."',`Status`='".$MC."' WHERE `idch`=".$ID.";";
             }else{
                 $sql="INSERT INTO `t_chofer`( `Nombre`, `Celu`, `Tel`, `Reg`, `Domicilio`, `Status`) VALUES ('".$Nombre."','".$Celu."','".$TEL."','".$REG."','".$Domicilio."','".$MC."');";
             }
             $segmento = mysqli_query($conexion,$sql);
}// Fin Graba Cliente

if ($M==4) { // Borra Cliente
    $sql= "DELETE FROM `t_chofer` WHERE `idch`=".$ID.";";
    $segmento = mysqli_query($conexion,$sql);
}// Fin Borra Cliente

if ($M==10) { // combo choferes
    $sql= "SELECT `idch`, `Nombre`,`Status` FROM `t_chofer` WHERE (`Status`< 3) ORDER BY `Status`,`Nombre` ASC ;";
    $segmento = mysqli_query($conexion,$sql);
    $tmp="";
    $C="";

    while ($row = mysqli_fetch_array($segmento)){
        if($row["Status"]==0){
            $C="";
        }
        if($row["Status"]==1){
            $C="V";
        }
        if($row["Status"]==2){
            $C="R";
        }
       $tmp=$tmp."<option value=".$row['idch']." class='".$C."'  >".$row['Nombre']."</option>";
    }

    print $tmp;
}// Fin combo choferes


if ($M==11) { // CAmbia Estado Chofer
    $sql= "UPDATE `t_chofer` SET `Status`='".$MC."' WHERE `idch`='".$ID."';";
    $segmento = mysqli_query($conexion,$sql);

}// Fin combo CAmbia Estado Chofer

if ($M==12) { // combo choferes  Solo presentes
    $sql= "SELECT `idch`, `Nombre`,`Status` FROM `t_chofer` WHERE (`Status`=1) ORDER BY  `Nombre` ASC ;";
    $segmento = mysqli_query($conexion,$sql);
    $tmp="";
    $C="";

    while ($row = mysqli_fetch_array($segmento)){

        $tmp=$tmp."<option value=".$row['idch']." class='".$C."'  >".$row['Nombre']."</option>";
    }

    print $tmp;
}// Fin combo choferes
    mysqli_close($conexion); 
?>