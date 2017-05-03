<?php  include 'contenido.php'; ?>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Remis Malvinas</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css?1" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>

        #bcli tr:hover{background: greenyellow;}
        input:focus{background: aquamarine;}
        input[type="radio"]{display: none;}

        input[type="radio"]:checked + label {
            background: #0074D9;
            color: #fff;
            padding: 5px 15px;
        }
        input[type="radio"] + label {
            background: #a6adae;
            color: #fff;
            padding: 5px 15px;
        }
    </style>
</head>

<body>

 <div id="wrapper">

        <!-- Navigation -->
<?php include 'menu.php';?>

       <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            Ficha Moviles - <label id="ID">0</label>
                        </div>
                        <div class="panel-body">
                            <div class="form-group input-group col-xs-6">
                                <span class="input-group-addon">Movil</span>
                                <input class="form-control TC" placeholder="Nº Movil" type="text" id="Movil" onkeypress="DeHasta('Movil','Auto')" >
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">Auto</span>
                                <input class="form-control  " placeholder="Automovil" type="text" id="Auto" onkeypress="DeHasta('Auto','Pat')" >
                            </div>
                            <div class="col-xs-6 B">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Pat:</span>
                                    <input class="form-control" placeholder="Patente" type="text" id="Pat" onkeypress="DeHasta('Pat','Seg')">
                                </div>
                            </div>
                            <div class="col-xs-6 B">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Seg:</span>
                                    <input class="form-control" placeholder="Seguro" type="text" id="Seg" onkeypress="DeHasta('Seg','dire')">
                                </div>
                            </div>
                            <div class="form-group input-group  col-xs-8">
                                    <span class="input-group-addon">Domi</span>
                                <select name="ESTADO" id="ESTADO" class="form-control">
                                    <option value="0">Libre sin chofer</option>
                                    <option value="1">ACTIVO</option>
                                    <option value="2">DESACTIVADO</option>
                                </select>
                             </div>
                            <div class="form-group input-group ">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">DUEÑO :</span>
                                    <input type="radio" name="gender" value="1" id="rolo" ><label for="rolo" style="padding-left: 16px;"  >Rolando</label>
                                   <input type="radio" name="gender" value="2" id="susana" checked> <label for="susana" style="padding-left: 16px;" >Susana</label>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer" style="height: 4em;">
                            <div class="col-xs-6 B"><button class="btn btn-success btn-block" id="bGrabar" onclick="Grabar()">Grabar</button></div>
                            <div class="col-xs-4 B"><button class="btn btn-warning btn-block" onclick="Limpiar();">Limpiar</button></div>
                            <div class="col-xs-2 B"><button class="btn btn-danger btn-block" onclick="Borrar();">Borrar</button></div>
                        </div>
                    </div>
                </div>

                 <div class="col-lg-8" id="pclientes">
                   <div>
                       <div class="col-xs-2"><buton class="btn btn-success" onclick="Limpiar();">Nuevo</buton></div>
                       <div class="col-xs-6 form-group input-group">
                             <span class="input-group-addon">Buscar:</span>
                             <input type="text" class="form-control" placeholder="Buscar" id="Buscar" autocomplete="off">
                       </div>
                   </div>
                       <table class="table sortable" id="tcliente">
                           <thead>
                           <tr class="Titulo">
                               <th width="85px;">Movil</th>
                               <th>Auto</th>
                               <th width="86px;">Patente</th>
                               <th>Seguro</th>
                               <th>Estado</th>
                               <th>Dueño</th>
                           </tr>
                           </thead>
                           <tbody id="bcli">

                           </tbody>
                       </table>
                 </div> <!-- /.col-lg-8 -->
            </div><!-- /.row -->

       </div> <!-- /.container-fluid -->
</div><!-- /#wrapper -->


<!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>
    <script src="../js/comun.js"></script>
    <script src="../js/sorttable.js"></script>
    <script src="../dist/js/sb-admin-2.js"></script>
 <script>
     jQuery.extend(jQuery.expr[":"],
         {
             "contiene-palabra": function (elem, i, match, array) {
                 return (elem.textContent || elem.innerText || jQuery(elem).text() || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
             }
         });

     $("#Buscar").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#tcliente tbody>tr").hide();
             jQuery("#tcliente td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#tcliente tbody>tr").show();
         }
     });
 </script>
 <script>
     function relist(){
         $("#bcli").load("cgi/bdMovil.php?M=1", function () { document.getElementById('Buscar').focus(); });
     }

     document.addEventListener('DOMContentLoaded',function ()  {
        relist();
     });

     function Limpiar() {
         document.getElementById('Movil').value="";
         document.getElementById('Auto').value="";
         document.getElementById('Pat').value="";
         document.getElementById('Seg').value="";
         document.getElementById('ESTADO').value="";
         document.getElementById('ID').innerHTML="0";
         document.getElementById('Movil').focus();
     }
     function Mov(id) {
         var d={M:2,ID:id};
         $.post("cgi/bdMovil.php", d, function(res){
             console.log(res);
             var Datos = res.split("|");// $row["idm"].'|'.$row["movil"].'|'.$row["auto"].'|'.$row["patente"].'|'.$row["seguro"].'|'.$row["MM"].'|'.$row["duenio"];

             document.getElementById('ID').innerHTML=Datos[0];
             document.getElementById('Movil').value=Datos[1];
             document.getElementById('Auto').value=Datos[2];
             document.getElementById('Pat').value=Datos[3];
             document.getElementById('Seg').value=Datos[4];
             document.getElementById('ESTADO').value=Datos[5];
             if(Datos[6]==1){
                 document.getElementsByName('gender')[0].checked='true';
             }else{
                 document.getElementsByName('gender')[1].checked='true';
             }
             document.getElementById('Movil').focus();
         });
     }
     function Grabar() {
         var Movil= document.getElementById('Movil').value.toUpperCase();
         var Auto= document.getElementById('Auto').value.toUpperCase();
         var Patente= document.getElementById('Pat').value.toUpperCase();
         var Seguro= document.getElementById('Seg').value.toUpperCase();
         var id=document.getElementById('ID').innerHTML;
         var ESTADO= document.getElementById('ESTADO').value;
         if(document.getElementsByName('gender')[0].checked){
             var DUENIO=1;
         }else{
             var DUENIO=2;
         }

         if(Movil.length<3){alert("El Codigo del MOVIL es muy corto");document.getElementById('Movil').focus();  return;}
         if(Auto.length<3){alert("Falta Auto");document.getElementById('Auto').focus();  return;}
         var d={M:3,ID:id,MOVIL:Movil,AUTO:Auto,PATENTE:Patente,SEGURO:Seguro,MM:ESTADO,DUE:DUENIO};

         $.post("cgi/bdMovil.php", d, function(res){
            alert("Grabado");
             relist();
            Limpiar();
         });
     }
     function Borrar() {
         var id= document.getElementById('ID').innerHTML;
         var d={M:4,ID:id };
        if(id>0){
            if(confirm("Va a borrar un Movil, Seguro?")){
                $.post("cgi/bdMovil.php", d, function(res){
                    alert("Listo");
                    relist();
                    Limpiar();
                });
            }
        }

     }
 </script>
</body>

</html>
