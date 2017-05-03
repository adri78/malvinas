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
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="../dist/css/sb-admin-2.css?1" rel="stylesheet">
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
        #bcli td:nth-child(2) { text-align: center; }
        #bcli td:nth-child(3) { text-align: right; }
    </style>
</head>

<body>

 <div id="wrapper">

        <!-- Navigation -->
<?php include 'menu.php';?>

       <div class="container-fluid">
            <div class="row">


                <hr>
                <div class="col-lg-4">
                    <div class="panel panel-red">
                        <div class="panel-heading">Precio del KM </div>
                        <div class="panel-body">
                            <div class="form-group input-group col-xs-6">
                                <span class="input-group-addon">$</span>
                                <input class="form-control TD" placeholder="0.00" type="text" id="pkm" onkeypress="DeHasta('codigo','cliente')" >
                            </div>
                        </div>
                        <div class="panel-footer" style="height: 4em;">
                            <div class=" "><button class="btn btn-success btn-block" id="bGrabar" onclick="GrabarKM()">Grabar</button></div>
                        </div>
                    </div>

                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Ficha LUGAR - <label id="ID">0</label>
                        </div>
                        <div class="panel-body">

                            <div class="form-group input-group">
                                <span class="input-group-addon">Lugar</span>
                                <input class="form-control  " placeholder="Nombre" type="text" id="Lugar" onkeypress="DeHasta('Lugar','Distancia')" >
                            </div>
                            <div class="form-group input-group col-xs-6">
                                <span class="input-group-addon">Distancia</span>
                                <input class="form-control TC" placeholder="0" type="text" id="Distancia" onkeypress="DeHasta('Distancia','bGrabar')" onkeyup="RecalcuKM()">
                            </div>
                            <div class="form-group input-group  col-xs-8">
                                <h3 style="float: right" id="Valor">0.00</h3>
                            </div>

                        </div>
                        <div class="panel-footer" style="height: 4em;">
                            <div class="col-xs-6 B"><button class="btn btn-success btn-block" id="bGrabar" onclick="Grabar()">Grabar</button></div>
                            <div class="col-xs-4 B"><button class="btn btn-warning btn-block" onclick="Limpiar();">Nuevo</button></div>
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
                               <th>Lugar</th>
                               <th width="100px;">Distancia</th>
                               <th width="100px;">Costo</th>
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
         $("#bcli").load("cgi/bdDistancia.php?M=1", function () { document.getElementById('Buscar').focus(); });
     }

     document.addEventListener('DOMContentLoaded',function ()  {
        relist();
         LoadVKM();
     });

     function Limpiar() {
         document.getElementById('Lugar').value="";
         document.getElementById('Distancia').value="";
         document.getElementById('Valor').innerHTML="0.00";
         document.getElementById('Lugar').focus();
     }
     function DIS(id) {
         var d={M:2,ID:id};
         $.post("cgi/bdDistancia.php", d, function(res){
             var Datos = res.split("|");//$row["idcli"]|$row["Cliente"]|$row["Telefono"]|$row["Domicilio"]|$row["Codigo"]
             document.getElementById('Lugar').value=Datos[1];
             document.getElementById('Distancia').value=Datos[2];
             document.getElementById('Valor').innerHTML=Datos[3];
             document.getElementById('ID').innerHTML=Datos[0];
             document.getElementById('Lugar').focus();
         });
     }
     function LoadVKM() {
         var d={M:0};
         $.post("cgi/bdDistancia.php", d, function(res){
             //var Datos = res.split("|");//$row["idcli"]|$row["Cliente"]|$row["Telefono"]|$row["Domicilio"]|$row["Codigo"]
             document.getElementById('pkm').value=res;
             document.getElementById('pkm').focus();
         });
     }
     function Grabar() {
         var Lugar= document.getElementById('Lugar').value.toUpperCase();
         var Distancia= ( document.getElementById('Distancia').value.toUpperCase());
         var id= document.getElementById('ID').innerHTML;
         if(Lugar.length<3){alert("El nombre del lugar es muy corto");document.getElementById('Lugar').focus();  return;}
         if(Distancia<0){alert("La distancia no puede ser negativa");document.getElementById('Distancia').focus();  return;}
         var d={M:3,ID:id,Lugar:Lugar,Distancia:Distancia};

         $.post("cgi/bdDistancia.php", d, function(res){
            alert("Grabado");
             relist();
            Limpiar();
         });
     }
     function GrabarKM() {
         var PKM = (document.getElementById('pkm').value.toUpperCase());
         var d={M:10,PKM:PKM};

         $.post("cgi/bdDistancia.php", d, function (res) {
             alert("Actualizando lista Precio x Distancia");
             relist();
         });
     }
     function RecalcuKM(){
         var x=document.getElementById('pkm').value;
         var y=parseFloat(document.getElementById('Distancia').value);
         var tmp=(x*y);
         if(isNaN(tmp)){tmp=0.00;}
         document.getElementById('Valor').innerHTML= tmp.toFixed(2) ;
     }
     function Borrar() {
         var id= document.getElementById('ID').innerHTML;
         var d={M:4,ID:id };
        if(id>0){
            if(confirm("Va a borrar un cliente, Seguro?")){
                $.post("cgi/bdDistancia.php", d, function(res){
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
