<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="CrearPoyecto.aspx.cs" Inherits="CotizadorUI.CrearPoyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="3" style="height: 65px"><h2><span class="glyphicon glyphicon-edit"></span>Crear Proyecto
                </h2></td>
            <td rowspan="11" style="width: 277px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td rowspan="11">
                <asp:GridView ID="GridView1" runat="server" Height="276px" Width="275px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 307px">Nombre Del Proyecto:</td>
            <td class="text-left" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="265px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 307px">&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">Asignar Empleado al Proyecto:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="123px">
                </asp:DropDownList>
                <br />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Listar empleados</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 307px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px; height: 24px">Cotizacion realizada para el proyecto:</td>
            <td style="height: 24px">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="55px" Width="131px">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 24px">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Listar cotizaciones</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 307px; height: 22px;"></td>
            <td colspan="2" style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 307px; height: 22px">Subir Planos del proyecto:</td>
            <td style="height: 22px">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="36px" Width="135px">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td style="height: 22px">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Listar planos</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 307px">
                &nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 307px">
                Status Del Proyecto:</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList4" runat="server" Height="32px" Width="133px">
                    <asp:ListItem>Iniciado</asp:ListItem>
                    <asp:ListItem>Pendiente Confirmacion</asp:ListItem>
                    <asp:ListItem>Finalizado</asp:ListItem>
                    <asp:ListItem>Cerrado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 307px">
                <asp:Button ID="btn_subir" runat="server" CssClass="btn btn-primary" Height="34px" Text="Crear proyecto" Width="124px" OnClick="btn_subir_Click" />
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
