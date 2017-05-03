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
        input:hover{background: #ffd5ef;   }
        #FTV{
           height:49vh;
           overflow-y: auto;

        }
        #FTH{
            max-height:29vh;
            overflow: scroll;
        }
        .Titulo{background: black;color: white;}
        #lstV tr:hover{background: greenyellow;}
        #lstM tr:hover{background: greenyellow;}
        #lstH tr:hover{background: greenyellow;}
        #tcliente{max-height:60vh;overflow-y: auto;}
        #TBC{background: #00ff84;margin: 20px 5px 30px 5px;padding: 10px; height: 300px; overflow-y: scroll;}
        #FCV{background: #2090ff;margin-bottom:30px;padding: 10px; height: 337px; overflow-y: scroll;}
        .B1{padding: 0;}
        .D{width: 50%;float: left;}
        .R{color:red;}
        .V{color: #0fff00;}

        #tdestinos td:nth-child(2) { text-align: right; }
        #tdestinos td:nth-child(3) { text-align: right; }
        #tdestinostd:nth-child(4) { text-align: center; }
        #lstM td:nth-child(3) button{margin: 0px;}
    </style>
</head>

<body>

 <div id="wrapper">

        <!-- Navigation -->
<?php include 'menu.php';?>

       <div class="container-fluid">
            <div class="row">
<!-- ****************************** Cliente del viaje ************************************************** -->
                <div class="col-lg-12 NV" id="FCV">
                    <div class="col-lg-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Ficha Cliente - <label id="ID">0</label> <label style="Float: right;">CODIGO: <span id="CodCli">1234</span></label>
                            </div>


                            <div class="panel-body">
                                    <h3 id="LCLIENTE" style="margin-top: 0px;"> Adrian Gil xxxxxxxx</h3>
                                    <h4 class="col-xs-10 B" style="margin: 0;"> Domicilio: <span id="DOMICILIO">Nother 2980 , callaxxxx , buenos aires</span></h4>

                                <div class="form-group input-group col-xs-12">
                                    <span class="input-group-addon B"><button class="btn btn-info C" onclick="OrgDOM()">ORIGEN</button></span>
                                    <input class="form-control" placeholder="Punto de Salida" maxlength="45" type="text" id="Origen" onkeypress="DeHasta('Origen','Destino')" >
                                </div>

                                <div class="form-group input-group col-xs-12">
                                    <span class="input-group-addon B"><button class="btn btn-danger C" onclick="DesDOM()">DESTINO</button></span>
                                    <input class="form-control" placeholder="Punto de Llegada"  maxlength="45" type="text" id="Destino" onkeypress="DeHasta('Destino','dire')">
                                </div>
                                <div id="barra">
                                    <div class="col-xs-5 B">
                                        <button class="btn btn-success btn-block" onclick="BENVIAR()">Enviar</button>
                                    </div>
                                    <div class="col-xs-4 B">
                                        <button class="btn btn-info btn-block" onclick="BReservar()">Reservar</button>
                                    </div>
                                    <div class="col-xs-3 B">
                                        <button class="btn btn-danger btn-block"">Cancelar Viaje</button>
                                    </div>
                                </div> <!-- Barra -->
                             <div id="Benviar" class="NV">
                                <div class="col-xs-8">
                                    <h4>
                                        <select name="Dturno" id="Dturno" class=" btn-block"">
                                            <option value="1"> Auto - Chofer  </option>
                                            <option value="2"> Auto2 - Chofer2  </option>
                                            <option value="3"> * Auto3 - Chofer4  </option>
                                        </select>
                                    </h4>
                                </div>
                                <div class="col-xs-4"> <button class="btn btn-info btn-block"> Enviar Ahora</button> </div>
                             </div> <!-- Fin de enviar Ahora -->
                             <div id="Breserva" class="NV">
                                 <h3><input type="text" id="Freserva" class="col-xs-4">  &nbsp;  Hora:<input type="time" name="time" min="0:01" max="24:00" step="300"> &nbsp;
                                     &nbsp;<button id="BReserva" class="btn btn-warning">Reservar</button></h3>

                             </div><!-- Fin de Reservar -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7" style="background: white;border-radius: 15px;border: 1px solid black; height: 320px;"> <!--  VIAJES COMUNES /dESTINOS -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#THISTRICA" data-toggle="tab" aria-expanded="true">Historico</a></li>
                            <li class=""><a href="#TCALC" data-toggle="tab" aria-expanded="false">Calculadora</a></li>

                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="THISTRICA">
                                <table class="table sortable" id="thistorica" width="100%">
                                    <thead>
                                    <tr class="Titulo2">
                                        <th>Fecha</th>
                                        <th>ORG</th>
                                        <th>Des</th>
                                        <th>Valor</th>
                                        <th>Chofer</th>
                                        <th>M</th>
                                    </tr>
                                    </thead>
                                    <tbody id="bHis"></tbody>
                                </table>
                             </div>
                            <div class="tab-pane fade" id="TCALC"  style="max-height: 220px;overflow-y:scroll">
                                <div class="form-group input-group col-xs-5" style="float:left; padding-top: 8px;"><span class="input-group-addon">Destino</span><input type="text" id="BusDes"  class="form-control" placeholder="Destino"></div>
                                <div class="col-xs-7 B1"><h4 style="background: rgb(4,255,171);padding-top: 5px;">Distacia:<input type="text" id="DisKM" class="TC" style="width: 85px;" maxlength="8" onkeyup="RecalcuKM()"> X $<span id="VKM"> 10.35</span>xKM = &nbsp;$<sapn id="RVKM">0.00</sapn></h4></div>

                                 <table class="table sortable" id="tdestinos">
                                      <thead>
                                      <tr class="Titulo2">
                                          <th>Lugar</th>
                                          <th>Distacia</th>
                                          <th>Precio</th>
                                          <th>M</th>
                                      </tr>
                                      </thead>
                                      <tbody id="bDes"></tbody>
                                  </table>

                            </div>

                        </div>
                    </div>
                </div>
 <!-- ******************************Fin  Cliente del viaje ************************************************** -->
 <!--- ************************   Listado de clientes        ************************************************** -->

              <div class="col-lg-12 NV" id="TBC">
                  <div>
                      <div class="col-xs-6 form-group input-group">
                          <span class="input-group-addon">Buscar:</span>
                          <input type="text" class="form-control" placeholder="Buscar" id="BuscarCli" autocomplete="off">
                      </div>
                  </div>
                  <table class="table sortable" id="tcliente">
                      <thead>
                      <tr class=" Titulo">
                          <th width="40px;">Codigo</th>
                          <th>CLIENTE</th>
                          <th width="80px;">Telefono</th>
                          <th>Domicilio</th>
                      </tr>
                      </thead>
                      <tbody id="bcli"></tbody>
                  </table>
              </div>
            </div>


 <!-- ******************************** ///////////////////////////////// ************************** -->

                <div class="col-lg-8">

                <div id="FTV">
                    <div class="col-lg-3 B">
                        <buton class="btn btn-success btn-block" onclick="NovoViaje()"> Nuevo</buton>
                    </div>
                    <div class="col-lg-7">
                        <div class="form-group input-group">
                            <span class="input-group-addon">Buscar</span>
                            <input class="form-control" name="Bus" id="Bus" placeholder="Cliente/Movil/Destino/Codigo" type="text">
                        </div>
                    </div>
                    <div class="col-lg-1 B">
                       <h3 style="padding-top: 0px;margin-top: 0px;"> <select id="tiemReserva" name="tiemReserva"style="padding-top: 0PX;">
                            <option value="1">24hs</option>
                            <option value="2">7D</option>
                            <option value="3">30D</option>
                        </select></h3>
                    </div>
                   <table class="table table-striped table-bordered table-hover sortable" id="lstViaje">
                        <thead class="Titulo">
                        <tr>
                            <th width="89px;">Fecha</th>
                            <th width="100px;">Cliente</th>
                            <th width="40px;">Movil</th>
                            <th>Origen</th>
                            <th>Destino</th>
                            <th width="89px;">T</th>
                            <th width="90px;">Estado</th>
                        </tr>
                        </thead>

                        <tbody id="lstV">
                        <tr data-id="1" data-t="2017-04-20 10:05:00">
                            <td>2017/04/20 10:05:00</td>
                            <td>Mark</td>
                            <td>movil 12</td>
                            <td>Agencia</td>
                            <td>Nother 2980,jose marmol  coto</td>
                            <td>Reserva</td>
                            <td>  <buton class="btn btn-info"> Reserva</buton>  </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        </tbody>

                    </table>
                </div>

<!-- ****************** Historico de viajes ******************************************** -->
                <div style="background: #41b5e2;padding: 9px;">
                    <div class="form-group input-group col-lg-6" style="padding-top: 10px;">
                        <span class="input-group-addon">Buscar</span>
                        <input class="form-control" name="BusH" id="BusH" placeholder="Historico" type="text">
                    </div>
                    <div id="FTH">
                    <table class="table table-bordered sortable" id="lstHistorico" style="background: white;">
                        <thead class="Titulo">
                        <tr >
                            <th width="89px;">Fecha</th>
                            <th width="100px;">Cliente</th>
                            <th width="40px;">Movil</th>
                            <th>Origen</th>
                            <th>Destino</th>
                            <th width="89px;">Monto</th>
                            <th width="90px;"></th>
                        </tr>
                        </thead>
                        <tbody id="lstV">
                        <tr data-id="1" data-t="2017-04-20 10:05:00">
                            <td>2017/04/20 10:05:00</td>
                            <td>Mark</td>
                            <td>movil 12</td>
                            <td>Agencia</td>
                            <td>Nother 2980,jose marmol  coto</td>
                            <td>Reserva</td>
                            <td><buton class="btn btn-warning">Modificar</buton></td>
                        </tr>
                        <tr data-id="1" data-t="2017-04-20 10:05:00">
                            <td>2017/04/20 10:05:00</td>
                            <td>tont</td>
                            <td>movil 42</td>
                            <td>coto</td>
                            <td>Nother 2980,jose marmol</td>
                            <td>Reserva</td>
                            <td><buton class="btn btn-warning">Modificar</buton></td>
                        </tr>
                        </tbody>

                    </table>
                    </div>

                </div>

                </div> <!-- /.col-lg-8 VIAJES   -->
                <div class="col-lg-4"> <!-- Autos -->
                    <a  class="btn btn-success D" onclick="cargaCho()">Choferes</a><a  class="btn btn-danger D" onclick="cargaTurnos()">Turnos</a>
                    <hr>
                    <div class="form-group input-group">
                        <span class="input-group-addon">Movil</span>
                        <input class="form-control" name="BusM" id="BusM" placeholder="Estado/Movil/Chofer" type="text">
                    </div>
<!-- ******************** Moviles *********************************************************** -->
                    <table class="table sortable" id="lstMovil">
                        <thead class="Titulo">
                            <tr>
                                <th>Movil</th>
                                <th>Chofer</th>
                                <th>Estado</th>
                                <th>T</th>
                            </tr>
                        </thead>
                        <tbody id="lstM">
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 1</td>
                            <td>juan perez a</td>
                            <td>Activo </td>
                            <td>10:50:10</td>
                        </tr>
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 1</td>
                            <td>adrian dddda</td>
                            <td>Taller </td>
                            <td>10:50:10</td>
                        </tr>
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 100</td>
                            <td>juan 555555</td>
                            <td>Espera </td>
                            <td>10:50:10</td>
                        </tr>
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 1</td>
                            <td>juan perez a</td>
                            <td>Activo </td>
                            <td>10:50:10</td>
                        </tr>
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 1</td>
                            <td>adrian dddda</td>
                            <td>Taller </td>
                            <td>10:50:10</td>
                        </tr>
                        <tr data-id="1" data-t="2017/01/09 15:21:01">
                            <td>Movil 100</td>
                            <td>juan 555555</td>
                            <td>Espera </td>
                            <td>10:50:10</td>
                        </tr>
                        </tbody>
                    </table>
<!-- ******************* FIN MOVILES  ******************************************************** -->

                </div><!-- Autos -->
            </div><!-- /.row -->

       </div> <!-- /.container-fluid -->
</div><!-- /#wrapper -->

 <!-- ************************************************************************************************** -->
 <!-- Modal_Chofer -->
 <div class="modal fade" id="abmCho" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
     <div class="modal-dialog">
         <div class="modal-content" style="background-color: #00ff84;">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" id="myModalLabel">Ingresos y Egresos de Choferes :</h4>
             </div>
             <div class="modal-body" style="height: 160px;">
                 <div class="col-xs-8">
                     <div class=" form-group input-group ">
                         <span class="input-group-addon"><p class="TD" style="margin: 0px;">CHOFER :</p></span>
                         <select name="CmbChofer" class="form-control" id="CmbChofer">
                             <option value="0">Sin Chofer</option>
                         </select>
                     </div>
                 </div>
                 <div class="col-xs-4">
                     <buton class="btn btn-info btn-block btn-lg" onclick="inCho()" ><i class="fa fa-long-arrow-left"></i> INGRESO </buton>
                     <hr>
                     <buton class="btn btn-danger btn-block btn-lg" onclick="outCho()"> EGRESO <i class="fa fa-long-arrow-right"></i></buton>
                 </div>
             </div>
         </div>
         <!-- /.modal-content -->
     </div>
     <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->
 <!-- ************************************************************************************************** -->

 <!-- ************************************************************************************************** -->
 <!-- Modal_Turnos -->
 <div class="modal fade" id="abmTur" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
     <div class="modal-dialog">
         <div class="modal-content" style="background-color: #ffce31;">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" id="myModalLabel">Alta de Turnos :</h4>
             </div>
             <div class="modal-body" style="height: 160px;">
                 <div class="col-xs-5 B">
                     <div class=" form-group input-group ">
                         <span class="input-group-addon"><p class="TD" style="margin: 0px;">Movil</p></span>
                         <select name="cmbMovil" class="form-control" id="cmbMovil">
                             <option value="0">Sin Autos</option>
                         </select>
                     </div>
                 </div>
                 <div class="col-xs-5 B">
                     <div class=" form-group input-group ">
                         <span class="input-group-addon"><p class="TD" style="margin: 0px;">Chofer</p></span>
                         <select name="CmbChofer" class="form-control" id="CmbChofer2">
                             <option value="0">Sin Chofer</option>
                         </select>
                     </div>
                 </div>
                 <div class="col-xs-2">
                     <buton class="btn btn-success btn-lg TC" onclick="TT()">Tomar<br>Turno</buton>
                 </div>
                 <hr>
             </div>
         </div>
         <!-- /.modal-content -->
     </div>
     <!-- /.modal-dialog -->
 </div>
 <!-- /.modal -->
 <!-- ************************************************************************************************** -->





 <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="../vendor/jquery/jquery-ui.css">
    <script src="../vendor/jquery/jquery-ui.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>
    <script src="../js/comun.js"></script>
    <script src="../js/sorttable.js"></script>
    <script src="../js/moment.js"></script>
    <script src="../js/moment-with-locales.min.js"></script>
    <script src="../dist/js/sb-admin-2.js?2"></script>

 <script>
     jQuery.extend(jQuery.expr[":"],
         {
             "contiene-palabra": function (elem, i, match, array) {
                 return (elem.textContent || elem.innerText || jQuery(elem).text() || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
             }
         });

     $("#BuscarCli").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#tcliente tbody>tr").hide();
             jQuery("#tcliente td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#tcliente tbody>tr").show();
         }
     });
     $("#Bus").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#lstViaje tbody>tr").hide();
             jQuery("#lstViaje td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#lstViaje tbody>tr").show();
         }
     });
     $("#BusH").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#lstHistorico tbody>tr").hide();
             jQuery("#lstHistorico td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#lstHistorico tbody>tr").show();
         }
     });
     $("#BusM").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#lstMovil tbody>tr").hide();
             jQuery("#lstMovil td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#lstMovil tbody>tr").show();
         }
     });

     $("#BusDes").keyup(function () {/* ******************    Motor del Buscador      ******************************************** */
         if (jQuery(this).val() != "") {
             jQuery("#tdestinos tbody>tr").hide();
             jQuery("#tdestinos td:contiene-palabra('" + jQuery(this).val() + "')").parent("tr").show();
         }
         else {
             jQuery("#tdestinos tbody>tr").show();
         }
     });
    function O(lugar) {
        document.getElementById('Origen').value=lugar;
    }
    function De(lugar) {
        document.getElementById('Destino').value=lugar;
    }
     function RecalcuKM(){
         var x=parseFloat( document.getElementById('VKM').innerHTML);
         var y=parseFloat(document.getElementById('DisKM').value);
         var tmp=(x*y);
         if(isNaN(tmp)){tmp=0.00;}
         document.getElementById('RVKM').innerHTML= tmp.toFixed(2) ;
     }
    function LoadVKM() {
        var d={M:0};
        $.post("cgi/bdDistancia.php", d, function(res){
            console.log("00-"+res);
            document.getElementById('VKM').innerHTML=parseFloat(res);
        });

        $("#bDes").load("cgi/bdDistancia.php?M=100");
    }
    document.addEventListener('DOMContentLoaded',function ()  {
        relist();
        //cargaCho();
        $( "#Freserva" ).datepicker();
        LoadVKM();
        $("#lstV tr").on("click",function(){
           alert("hola");
        });
    });
    function cargaCho(){
        $("#CmbChofer").load("cgi/bdChofer.php?M=10",function () {
            $("#abmCho").modal("show");
            document.getElementById('CmbChofer').focus();
        });
    }
    function cargaTurnos(){ ///Toma de autos para turnos
      $("#cmbMovil").load("cgi/bdMovil.php?M=10",function () {
        $("#CmbChofer2").load("cgi/bdChofer.php?M=12",function () {  // solo choferes presentes sin autos.  v
            $("#abmTur").modal("show");
            document.getElementById('CmbChofer').focus();
        });
      });
    }

    function relist(){
        $("#bcli").load("cgi/bdCli.php?M=1", function () { document.getElementById('BuscarCli').focus(); });
    }

    function NovoViaje(){
        document.getElementById('TBC').classList.toggle('NV');
    }
    function Cli(id){ //Carga viaje para el cliente ID
        document.getElementById('FCV').classList.remove('NV');
        document.getElementById('TBC').classList.add('NV');
    }
    function OrgDOM() {
      document.getElementById('Origen').value= document.getElementById('DOMICILIO').innerHTML;
    }
    function DesDOM() {
        document.getElementById('Destino').value= document.getElementById('DOMICILIO').innerHTML;
    }
    function BENVIAR() {
        document.getElementById('barra').classList.add('NV');
        document.getElementById('Benviar').classList.remove('NV');
    }

    function BReservar() {
        document.getElementById('barra').classList.add('NV');
        document.getElementById('Breserva').classList.remove('NV');
        document.getElementById('Freserva').value=HOY();
        document.getElementById('Breserva').classList.remove('NV');
    }

    function Cli(id){ // cliente a viajar
        var d={M:2,ID:id};
        $.post("cgi/bdCli.php", d, function(res){
            var Datos = res.split("|");
                // $row["idcli"].'|'.$row["Cliente"].'|'.$row["Telefono"].'|'.$row["Domicilio"].'|'.$row["Codigo"];
            document.getElementById('ID').innerHTML=Datos[0];
            document.getElementById('CodCli').innerHTML=Datos[4]+"//TEL:"+Datos[2];
            document.getElementById('LCLIENTE').innerHTML=Datos[1];
            document.getElementById('DOMICILIO').innerHTML=Datos[3];
            document.getElementById('TBC').classList.add('NV');
            document.getElementById('FCV').classList.remove('NV');
        });
    }
    function HOY() {
        var f = new Date();
        return  (f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear());
    }
     function inCho(){ //outCho()
         var id=document.getElementById('CmbChofer').value;
         var d={M:11,ID:id,MC:1};
         $.post("cgi/bdChofer.php", d, function(res){
             var combo = document.getElementById("CmbChofer");
             var selected = combo.options[combo.selectedIndex].text
             alert(selected +" Esta ACTIVADO");
             $('#abmCho').modal('hide');
         });
     }
     function outCho(){ //outCho()
         var id=document.getElementById('CmbChofer').value;
         var d={M:11,ID:id,MC:0};
         $.post("cgi/bdChofer.php", d, function(res){
             var combo = document.getElementById("CmbChofer");
             var selected = combo.options[combo.selectedIndex].text
             alert(selected +" Esta LIBRE");
             $('#abmCho').modal('hide');
         });
     }
    function TT() {
         var ida=document.getElementById('cmbMovil').value;
         var idch=document.getElementById('CmbChofer2').value;

        if(ida==0){ alert("No tienes Auto disponible");return}
        if(idch==0){ alert("Sin chofer para el auto");return}

         if(Estado(ida,1)) { alert("El auto ya esta en uso"); return};
         if(Estado(idch,2)){ alert("El Chofer no esta libre"); return };
      var kmini=prompt("Ingrese el kilometraje de la unidad:", "0000");
         Estado(ida,3);
         Estado(idch,4);
         NTurno(ida,idch,100,kmini);
        $("#abmTur").modal("hide");
    }
    function Estado(id,modo) {
        var d={M:modo,ID:id}
        $.post("cgi/bdOtros.php",d,function(res){
            return res;
        });
    }
    function NTurno(ida,idch,modo,kmini){
        var d={M:modo,IDA:ida,IDCH:idch,KMINI:kmini};
        $.post("cgi/bdOtros.php",d,function(){
            CTurnos();
        });
    }
    function CTurnos(){
        $("#lstM").load("cgi/bdOtros.php?M=101");
    }
</script>
 <script>
   var ft=document.getElementById('lstM');
   var FilasTur=ft.rows.length;
   var fecha1,fecha2;
   var fecha2=moment();;

    for(i=0;i<FilasTur;i++){
        fecha1= moment(ft.rows[i].getAttribute('data-t'));
        var tiempo= fecha2.diff(fecha1,'s');
        console.log(hms(tiempo));
    }
 </script>
 <script>
    $("#document").ready(function(){
        CTurnos();
    });
 </script>
</body>

</html>
