<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="IngresarTrabajFinal.aspx.cs" Inherits="CotizadorUI.IngresarTrabajFinal" EnableEventValidation="false" %>

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



                                <div class="form-group">
                                    <asp:Label ID="lblId" runat="server" Text="id" class="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_id" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>



                                <div class="form-group">
                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre" class="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_nombre" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblPrimerApellido" runat="server" Text="Apellido 1" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_apellido1" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblSegundoApellido" runat="server" Text="Apellido 2" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_apellido2" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Roll" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:DropDownList ID="ddl_Rol" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="admin" Value="1">  </asp:ListItem>
                                            <asp:ListItem Text="consultor" Value="2 ">  </asp:ListItem>
                                            <asp:ListItem Text="agente de ventas" Value="3 ">  </asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblPassword" runat="server" Text="Constraseña" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox TextMode="Password" ID="txt_contrasena" runat="server" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="correo" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_correo" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Telefono" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <asp:TextBox ID="txt_telefono" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        <br />
                                    </div>
                                </div>



                                <div class="form-group">
                                    <div class="col-md-9 col-md-offset-3">
                                        <asp:Button ID="btnlogeo" Text="Insertar" CssClass="btn btn-success" runat="server" OnClick="btnlogeo_Click" />
                                    </div>
                                </div>

                            </form>

                        </div>

                    </div>
                </div>
                <!-- /form input mask -->

                <!-- /image cropping -->

                <!-- /page content -->


            </div>

        </div>
    </div>

</asp:Content>
