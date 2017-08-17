<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cotizador.aspx.cs" Inherits="CotizadorUI.WebForm1" %>

<!--Licence URI: http://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
    <title>Drywest</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Usuario/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">



    <style type="text/css">
        .auto-style1 {
            display: block;
            clear: both;
            margin-left: -0px;
        }

        formCotizador, fieldset, legend {
    margin: 0;
    padding: 0;
    border: none;
    background-color: white;
}
    </style>



</head>
<body id="top" runat="server">

    <div class="wrapper row1">
        <header id="header" class="hoc clear">
            <div id="logo" class="fl_left">
                <h1><a href="index.html">Zúñiga & Rodriguez Studio S.A</a></h1>
            </div>
            <div class="fl_right"><a class="btn" href="#">Login</a></div>
        </header>
    </div>
    <!-- Top Background Image Wrapper -->
    <div class="bgded" style="background-image: url('images/demo/backgrounds/01.png');">
        <div class="wrapper row2">
            <nav id="mainav" class="hoc clear">
                <ul class="clear">
                    <li class="active"><a href="IndexUsuario.aspx">Home</a></li>
                    <li><a href="GaleriaAlbum.aspx">Galeria</a></li>
                    <li><a href="#nostros">Nosotros</a></li>
                    <li><a href="#servicios">Servicios</a></li>
                    <li><a href="#contactenos">Contactenos</a></li>
                    <li><a href="LoginFinal.aspx">Login</a></li>

                </ul>
            </nav>
        </div>
    </div>



    <!-- End Top Background Image Wrapper -->

   <form runat="server">
        <div class="container body-content">
     <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>

    <div class="container">
     
        <div class="row-fluid">
            <div class="col-md-12">
                <h2><span class="glyphicon glyphicon-pencil"></span>Primer paso, Nueva Cotización
                </h2>
                <hr>
               
                    <div class="form-group row">

                        <label for="atencion" class="col-md-1 control-label">cuartos principal:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl_CO" class="form-control" runat="server">
                                <asp:ListItem Text="1 cuarto de 4x5" Value="1">  </asp:ListItem>
                                <asp:ListItem Text="2 cuartos de 4x5" Value="2">  </asp:ListItem>
                                <asp:ListItem Text="3 cuartos de 4x5" Value="3">  </asp:ListItem>

                            </asp:DropDownList>
                        </div>


                        <label for="tel1" class="col-md-2 control-label">Cuartos Secundarios:</label>
                        <div class="col-md-2">

                            <asp:DropDownList ID="ddl_CS" class="form-control" runat="server">
                                <asp:ListItem Text="1 cuarto de 3x3mts" Value="1">  </asp:ListItem>
                                <asp:ListItem Text="2 cuartos de 3x3mts" Value="2">  </asp:ListItem>
                                <asp:ListItem Text="3 cuartos de 3x3mts" Value="3">  </asp:ListItem>
                                <asp:ListItem Text="4 cuartos de 3x3mts" Value="4">  </asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <label for="lblbaños" class="col-md-1 control-label">Baños:</label>
                        <div class="col-md-3">

                            <asp:DropDownList ID="ddl_baños" class="form-control" runat="server">
                                <asp:ListItem Text="1 baño de 3.8m2" Value="1">  </asp:ListItem>
                                <asp:ListItem Text="2 baños de 3.8m2" Value="2 ">  </asp:ListItem>
                                <asp:ListItem Text="3 baños de 3.8m2" Value="3 ">  </asp:ListItem>
                                <asp:ListItem Text="4 baños de 3.8m2 " Value="4">  </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <hr>

                    <div class="form-group row">

                        <label for="lblcocina" class="col-md-1 control-label">cocina:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl_cocina" class="form-control" runat="server">
                                <asp:ListItem Text="1 cocina de 4x4mts" Value="1">  </asp:ListItem>

                            </asp:DropDownList>
                        </div>

                        <label for="comedor" class="col-md-2 control-label">comedor:</label>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddl_comedor" class="form-control" runat="server">
                                <asp:ListItem Text="1 3x3mts" Value="1">  </asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <label for="oficina" class="col-md-1 control-label">Oficina:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl_oficina" class="form-control" runat="server">
                                <asp:ListItem Text="1 oficina 3x2mts" Value="1">  </asp:ListItem>
                                <asp:ListItem Text="2 oficinas  3x2mts" Value="2">  </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group row">
                        <label for="lblacab" class="col-md-1 control-label">acabado:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl_acabado" class="form-control" runat="server">
                                <asp:ListItem Text="Standard" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Plus" Value="2"></asp:ListItem>
                            </asp:DropDownList>


                        </div>

                        <label for="plantas" class="col-md-2 control-label">plantas:</label>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddl_plantas" class="form-control" runat="server">
                                <asp:ListItem Value="1">  </asp:ListItem>
                                <asp:ListItem Value="2">  </asp:ListItem>


                            </asp:DropDownList>
                        </div>

                        <label for="oficina" class="col-md-1 control-label">salas:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddl_sala" class="form-control" runat="server">
                                <asp:ListItem Text="una sala de 3x4 mt" Value="1">  </asp:ListItem>



                            </asp:DropDownList>
                        </div>

                    </div>
                    <hr>
                    
                    <h2><span class="glyphicon glyphicon-edit"></span>Segundo paso, mira el precio y tamaño </h2>
                    <div class="col-md-12">
                        <div class="pull-right">
                            <asp:ScriptManager ID="aa" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                        <ProgressTemplate>
                                            <table cellpadding="1" cellspacing="1">
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/progress_bar.gif" /></td>
                                                    <td class="auto-style2">
                                                        <asp:Label ID="Label1" runat="server" Text="Procesando..."></asp:Label></td>
                                                </tr>
                                            </table>
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                  <strong>  <asp:Label ID="lblprecio" runat="server" Text=""></asp:Label></strong>
                                 <strong> <asp:Label ID="lbl_totalMetros" runat="server" Text=""></asp:Label></strong>
                                    <asp:Button ID="btnCotizar1" align="center" Text="cotizar" class="btn btn-success" OnClick="btnCotizar1_Click" runat="server" />
                                    
                                    <!--  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">-->
                                    <%--<asp:Button ID="btn_limpiar" runat="server" Text="Limpiar" OnClick="btn_limpiar_Click" />--%>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            </contenttemplate>
                          
                        </div>
                    </div>
              
                <br>
                <br>



                <!--<div id="resultados" class='col-md-12'></div>
                <!-- Carga los datos ajax -->

                <!-- Modal -->
                <!--   <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Buscar productos</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" id="q" placeholder="Buscar productos" onkeyup="load(1)">
                                        </div>
                                        <button type="button" class="btn btn-default" onclick="load(1)"><span class='glyphicon glyphicon-search'></span>Buscar</button>
                                    </div>
                                </form>
                                <div id="loader" style="position: absolute; text-align: center; top: 55px; width: 100%; display: none;"></div>
                                <!-- Carga gif animado -->
                <!-- <div class="outer_div"></div>
                                <!-- Datos ajax Final -->
                <!-- </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                            </div>
                        </div>
                    </div>
                </div> -->

                <br />
                <h2><span class="glyphicon glyphicon-ok"></span>¿Te gusto la cotizacio? </h2>
               <h5>llena los siguientes espacios para ponernos en contacto</h5>
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View2" runat="server">
                                <div class="col-md-12">
                                    <div class="form-group row">


                                        <label for="atencion" class="col-md-1 control-label">numero de cedula:</label>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="TextBox27" textMode="Number" runat="server" Width="177px"></asp:TextBox>

                                        </div>



                                        <label for="atencion" class="col-md-1 control-label">nombre:</label>
                                        <div class="col-md-3">

                                            <asp:TextBox ID="TextBox28" runat="server" Width="177px"></asp:TextBox>
                                        </div>



                                        <label for="atencion" class="col-md-1 control-label">apellido:</label>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="TextBox29" runat="server" Width="177px"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group row">

                                        <label for="lblcocina" class="col-md-1 control-label">Email:</label>
                                        <div class="col-md-3">

                                            <asp:TextBox ID="TextBox30" runat="server" TextMode="Email" Width="177px"></asp:TextBox>

                                        </div>

                                        <label for="lblcocina" class="col-md-1 control-label">telefono:</label>
                                        <div class="col-md-3">

                                            <asp:TextBox ID="TextBox31" runat="server" TextMode="Number" Width="177px"></asp:TextBox>
                                            <br />
                                        </div>
                                        <label for="lblcocina" class="col-md-1 control-label">localizacion:</label>
                                        <div class="col-md-3">

                                            <asp:TextBox ID="TextBox32" runat="server" Width="177px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="pull-right">
                                        <asp:Button ID="Button1" runat="server" class="btn btn-info"  Text="Enviar Datos de la Cotizacion " OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View1" runat="server">
                            </asp:View>
                        </asp:MultiView>

            </div>
        </div>
       
    </div>
           
            </div>
    </form>





    <!-- Aqui es el footer  -->

    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->
            <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Zúñiga & Rodriguez Studio S.A</a></p>
            </div>
        </div>

            <!-- ################################################################################################ -->
        
    <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
    <!-- JAVASCRIPTS -->
    <script src="Usuario/layout/scripts/jquery.min.js"></script>
    <script src="Usuario/layout/scripts/jquery.backtotop.js"></script>
    <script src="Usuario/layout/scripts/jquery.mobilemenu.js"></script>

</body>
</html>
