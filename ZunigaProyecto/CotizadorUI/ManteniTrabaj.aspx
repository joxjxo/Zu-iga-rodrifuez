<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="ManteniTrabaj.aspx.cs" Inherits="CotizadorUI.ManteniTrabaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Usuarios</h3>
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
                        <h2>Buscar Usuario</h2>

                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
                        <form class="form-horizontal form-label-left">

                          <!--  <div>
                                <asp:Label ID="ndsj" runat="server" Text="Idtrabajador: "></asp:Label>
                                <asp:TextBox ID="jnj" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
                            </div>

                            -->

                            <div>
                            <div class="form-group">
                                <asp:Label ID="lblId" runat="server" Text="IdTrabajador" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>
                            <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" /> <br />
                                </div> <br />
                                </div>
                            <div class="form-group" id="divMantenimiento" runat="server" visible="false">
                            <div class="form-group">

                                <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>



                            <div class="form-group">
                                <asp:Label ID="lbApellido" runat="server" Text="Primer Apellido" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtApell1" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lbApellido2" runat="server" Text="Segundo Apellido" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtApell2" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lbRoll" runat="server" Text="Roll" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtroll" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lbContraseña" runat="server" Text="Contraseña" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox TextMode="Password" ID="txtContraseña" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lbCorreo" runat="server" Text="Correo" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox ID="txtCorreo" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lbTelefono" runat="server" Text="telefono" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <asp:TextBox TextMode="Number" ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-9 col-md-offset-3">
                                    <br />
                                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-warning" OnClick="btnModificar_Click" />
                                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" />
                                </div>
                            </div>
                                </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
