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
    </style>
</head>

<body>

 <div id="wrapper">

        <!-- Navigation -->
<?php include 'menu.php';?>

       <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            Ficha Telefonista - <label id="ID">0</label>
                        </div>
                        <div class="panel-body">
                            <div class="form-group input-group col-xs-8">
                                <span class="input-group-addon">DNI:</span>
                                <input class="form-control" placeholder="DNI" type="text" id="DNI" onkeypress="DeHasta('DNI','Nombre')" >
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">Nombre</span>
                                <input class="form-control" placeholder="Nombre" type="text" id="Nombre" onkeypress="DeHasta('Nombre','Tel')" >
                            </div>
                            <div class="form-group input-group col-xs-6">
                                <span class="input-group-addon">Tel:</span>
                                <input class="form-control" placeholder="Telefono" type="text" id="Tel" onkeypress="DeHasta('Tel','dire')">
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">Domi</span>
                                <input class="form-control" placeholder="DOMICILIO" type="text" id="dire" onkeypress="DeHasta('dire','Usuario')">
                            </div>
                            <div class="form-group input-group col-xs-6">
                                <span class="input-group-addon">Usuario:</span>
                                <input class="form-control" placeholder="Usuario" type="text" id="Usuario" onkeypress="DeHasta('Usuario','bGrabar')">
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
                           <tr class=" Titulo">
                               <th>Telefonista</th>
                               <th width="60px;">Celular</th>
                               <th>Domicilio</th>
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
         $("#bcli").load("cgi/bdTelefonista.php?M=1", function () { document.getElementById('Buscar').focus(); });
     }

     document.addEventListener('DOMContentLoaded',function ()  {
        relist();
     });

     function Limpiar() {
         document.getElementById('DNI').value="";
         document.getElementById('Nombre').value="";
         document.getElementById('Tel').value="";
         document.getElementById('dire').value="";
         document.getElementById('Usuario').value=0;
         document.getElementById('ID').innerHTML="0";
         document.getElementById('DNI').focus();
     }
     function OPE(id) {
         var d={M:2,ID:id};
         $.post("cgi/bdTelefonista.php", d, function(res){
             var Datos = res.split("|");//$row["idop"].'|'.$row["Nombre"].'|'.$row["Tel"].'|'.$row["DNI"].'|'.$row["Domicilio"].'|'.$row["Reg"].'|'.$row["Status"];.'|'.$row["Status"];
             document.getElementById('ID').innerHTML=Datos[0];
             document.getElementById('Nombre').value=Datos[1];
             document.getElementById('Tel').value=Datos[2];
             document.getElementById('DNI').value=Datos[3];
             document.getElementById('dire').value=Datos[4];
             document.getElementById('DNI').focus();
         });
     }
     function Grabar() {
         var Nombre= document.getElementById('Nombre').value.toUpperCase();
         var Tel= document.getElementById('Tel').value;
         var DNI= document.getElementById('DNI').value;
         var dire= document.getElementById('dire').value.toUpperCase();
         var id= document.getElementById('ID').innerHTML;
         if(Nombre.length<3){alert("El Nombre es muy corto");document.getElementById('Nombre').focus();  return;}
         if(DNI.length<3){alert("Falta DNI de la telefonista");document.getElementById('DNI').focus();  return;}
         var d={M:3,ID:id,TEL:Tel,Nombre:Nombre,DNI:DNI ,Domicilio:dire};

         $.post("cgi/bdTelefonista.php", d, function(res){
            alert("Grabado");
             relist();
            Limpiar();
         });
     }
     function Borrar() {
         var id= document.getElementById('ID').innerHTML;
         var d={M:4,ID:id };
        if(id>0){
            if(confirm("Va a borrar un Chofer, Seguro?")){
                $.post("cgi/bdTelefonista.php", d, function(res){
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
