<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="LoginFinal.aspx.cs" Inherits="CotizadorUI.LoginFinal" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>


    <div>

        <div class="login_wrapper">
            <div class="animate form login_form">

                <div class="x_panel">

                    <h1 style="text-align: center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Dashboard/user-filled-person-shape.png" /></h1>
                    <hr />
                    <div>
                        <%-- <asp:Textbox id="txtUsername" " type="text" class="form-control"  required="" runat="server"/>
                        --%>


                        <div class="form-group">
                            <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                            <div class="col-md-9 col-sm-9 col-xs-9">
                                <asp:TextBox ID="txt_idtrabaj" runat="server" CssClass="form-control"></asp:TextBox>
                                <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="control-label col-md-3 col-sm-3 col-xs-3"></asp:Label>
                            <div class="col-md-9 col-sm-9 col-xs-9">
                                <asp:TextBox ID="txt_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                <br />
                            </div>
                        </div>


                        <%-- <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txt_idtrabaj" CssClass="form-control" runat="server"></asp:TextBox>--%>
                        <br />
                    </div>
                    <div>
                        <%--   <asp:Textbox id="txtPassword"  type="password" class="form-control" required="" runat="server"/>
                        --%>
                        <%--<asp:TextBox ID="txt_password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox> <br />--%>
                    </div>
                    <div>
                    </div>



                    <asp:Button ID="btnlogeo" runat="server" Text="Ingresa" CssClass="btn btn-success" OnClick="btnlogeo_Click" />


                    <asp:Button ID="btnRegresar" runat="server" Text="Menu" CssClass="btn btn-success" OnClick="btnRegresar_Click" />


                </div>
        </div>
    </div>


</asp:Content>
