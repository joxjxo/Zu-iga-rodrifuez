<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="NuevoDocumento.aspx.cs" Inherits="CotizadorUI.NuevoDocumento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Ingresar Usuario</h3>
                </div>

                <div class="title_right">
                    <!-- <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>-->
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="container body-content">
                <div class="alert alert-success" visible="false" id="mensaje" runat="server">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong id="textoMensaje" runat="server"></strong>
                </div>
                <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong id="textoMensajeError" runat="server"></strong>
                </div>
                <!-- form input mask -->
                <div class="col-md-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Datos Nuevo Usuario</h2>

                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <br />
                            <form class="form-horizontal form-label-left">
     <table class="nav-justified">
        <tr>
            <td colspan="2" style="height: 65px">
                <h2>Nuevo Acuerdo/Documento</h2>
            </td>
            <td rowspan="6" style="width: 277px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td rowspan="6">
                <asp:GridView ID="GridView1" runat="server" Height="276px" Width="275px">
                    <Columns>
                        <asp:ButtonField Text="Descargar" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 145px; height: 25px;">
                <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
            </td>
            <td class="text-left" style="height: 25px">
                <asp:TextBox ID="txt_codigo" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">Documento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 27px;" colspan="2">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 145px; ">Descripcion del Documento:</td>
            <td class="text-center">
                <asp:TextBox ID="TextBox2" runat="server" Height="73px" TextMode="MultiLine" Width="225px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 145px">
                <asp:Button ID="btn_subir" runat="server" CssClass="btn btn-primary" Height="34px" Text="Aceptar" Width="124px" OnClick="btn_subir_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

     </div>
                            </div>

                       
                      
            </div>
                    
            </div>
                </div>
              <!-- /form input mask -->

                <!-- /image cropping -->
          
        <!-- /page content -->
                  
        
      </div>
        
</asp:Content>
