<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NuevaInterfazBase.WebForm1" %>

<!DOCTYPE html>
<!--
Template Name: Drywest
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
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
    </style>
    
  
    
</head>
<body id="top" runat="server">

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Drywest</a></h1>
    </div>
    <div class="fl_right"><a class="btn" href="#">Quam quisque vel</a></div>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded" style="background-image:url('images/demo/backgrounds/01.png');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row2">
    <nav id="mainav" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a href="">Galeria</a></li>
        <li><a href="#">Nosotros</a></li>
            
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </div>
</div>
 
  

<!-- End Top Background Image Wrapper -->

   <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->

      <!-- Herramienta Cotizadora -->
    
  <div class="x_content">
                <h2><span class="glyphicon glyphicon-edit"></span>Nueva Cotización
                </h2>
                <hr>
                <form class="form-horizontal" role="form" id="datos_cotizacion" runat="server">
                    <div class="form-group row">

                        <label for="atencion" class="col-md-2 control-label">cuartos principal:</label>
                        <div class="col-md-2">
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

                        <label for="lblbaños" class="col-md-2 control-label">Baños:</label>
                        <div class="col-md-2">

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

                        <label for="lblcocina" class="col-md-2 control-label">cocina:</label>
                        <div class="col-md-2">
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

                        <label for="oficina" class="col-md-2 control-label">Oficina:</label>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddl_oficina" class="form-control" runat="server">
                                <asp:ListItem Text="1 oficina 3x2mts" Value="1">  </asp:ListItem>
                                <asp:ListItem Text="2 oficinas  3x2mts" Value="2">  </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group row">
                        <label for="lblacab" class="col-md-2 control-label">acabado:</label>
                        <div class="col-md-2">
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

                        <label for="oficina" class="col-md-2 control-label">salas:</label>
                        <div class="col-md-2">
                            <asp:DropDownList ID="ddl_sala" class="form-control" runat="server">
                                <asp:ListItem Text="una sala de 3x4 mt" Value="1">  </asp:ListItem>
                             
                             

                            </asp:DropDownList>
                        </div>

                    </div>
                    <hr>
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
                                    <asp:Label ID="lblprecio" runat="server" Text=""></asp:Label>
                                      <div class="form-group">
                                         <div class="col-md-9 col-md-offset-">
                                    <asp:Button ID="btnCotizar1" Text="cotizar" runat="server" class="btn btn-success" /> <br />
                                             <br />
                                              <asp:Button ID="btn_limpiar" runat="server" Text="Limpiar" class="btn btn-success" />
                                             </div>
                                    <!--  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">-->
                                      
                                          




                                   

                                </ContentTemplate>
                            </asp:UpdatePanel>
                            </contenttemplate>
                          
                        </div>
                    </div>
                </form>
                <br>
                <br>

      </div>

    
      <!-- Fin de la Heramienta Cotizadora -->
    <!-- ################################################################################################ -->
    <!-- / main body -->
  </main>
</div>

            




    <!-- Aqui es el footer  -->

<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h6 class="heading">Arcu accumsan id felis</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          Street Name &amp; Number, Town, Postcode/Zip
          </address>
        </li>
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="heading">Sodales facilisis nisi</h6>
      <ul class="nospace linklist">
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">Curabitur a pharetra</a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
            <p class="nospace">Quis quam in hendrerit elit donec hendrerit sollicitudin imperdiet curabitur [&hellip;]</p>
          </article>
        </li>
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">Risus sit amet blandit</a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
            <p class="nospace">Ultricies aliquam nisi vitae pulvinar donec luctus ex ex eget ornare tortor [&hellip;]</p>
          </article>
        </li>
      </ul>
    </div>
    <div class="one_third">
      <h6 class="heading">Justo duis vulputate</h6>
      <p class="nospace btmspace-30">commodo non proin fermentum neque sapien phasellus molestie tincidunt.</p>
      <form method="post" action="#">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="Usuario/layout/scripts/jquery.min.js"></script>
<script src="Usuario/layout/scripts/jquery.backtotop.js"></script>
<script src="Usuario/layout/scripts/jquery.mobilemenu.js"></script>
<script src="Scripts/_references.js"></script>
<script src="Scripts/bootstrap.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/jquery-1.10.2.intellisense.js"></script>
<script src="Scripts/jquery-1.10.2.js"></script>
<script src="Scripts/jquery-1.10.2.min.js"></script>
<script src="Scripts/modernizr-2.6.2.js"></script>
<script src="Scripts/respond.js"></script>
<script src="Scripts/respond.min.js"></script>
<script src="Content/bootstrap.css"></script>
<script src="Content/bootstrap.min.css"></script>
<script src="Content/Site.css"></script>
</body>
</html>