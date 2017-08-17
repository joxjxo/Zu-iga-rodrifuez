<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario.Master" AutoEventWireup="true" CodeBehind="CotizadorAvanzado.aspx.cs" Inherits="CotizadorUI.CotizadorAvanzado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="form1" runat="server">
    
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
                <h2><span class="glyphicon glyphicon-edit"></span>Nueva Cotización
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </h2>
                <hr>
                    
                        <div class="form-group row">
                            <h4><span class="glyphicon glyphicon-pencil"></span>paso 1: </h4>
                            <h6><span class="glyphicon glyphicon-check"></span>escoja la cantidad de cuartos que desee y agrege el tamaño </h6>
                            <br />
                                <label for="atencion" class="col-md-1 control-label">cuartos principal:</label>
                                <div class="col-md-3">
                                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddl_CO" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_CO_SelectedIndexChanged">
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                    </asp:DropDownList>
                                    <table class="nav-justified" style="width: 80%; height: 136px">
                                        <tr>
                                            <td style="width: 103px; height: 38px;">Primer Cuarto:</td>
                                            <td class="text-center" style="width: 244px; height: 38px;">
                                                <asp:DropDownList ID="txt_PCP1" runat="server" Height="21px" Width="34px">
                                        <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label10" runat="server" Text="x"></asp:Label>
&nbsp;<asp:DropDownList ID="txt_PCP2" runat="server" Height="21px" Width="34px">
     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label39" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label23" runat="server" Text="Segundo Cuarto:"></asp:Label>
                                            </td>
                                            <td class="text-center" style="width: 244px">
                                                <asp:DropDownList ID="txt_SCP1" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label11" runat="server" Text="x"></asp:Label>
&nbsp;<asp:DropDownList ID="txt_SCP2" runat="server" Height="21px" Width="34px">
     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label40" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label24" runat="server" Text="Tercer Cuarto:"></asp:Label>
                                            </td>
                                            <td class="text-center" style="width: 244px">
                                                <asp:DropDownList ID="txt_TCP1" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label12" runat="server" Text="x"></asp:Label>
                                                <asp:DropDownList ID="txt_TCP2" runat="server" Height="21px" Width="34px">
                                                 <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label41" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                             </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                                <label for="tel1" class="col-md-1 control-label">Cuartos Secundarios:</label>
                                <div class="col-md-2">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddl_CS" class="form-control" runat="server" OnSelectedIndexChanged="ddl_CS_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>

                                    </asp:DropDownList>
                                     <table class="nav-justified" style="width: 85%; height: 145px">
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label25" runat="server" Text="Primer Cuarto Secundario:"></asp:Label>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:DropDownList ID="txt_PCS1" runat="server" Height="21px" Width="34px">
                                                 <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:Label ID="Label52" runat="server" Text="x"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_PCS2" runat="server" Height="21px" Width="34px">
                                                 <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label42" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label26" runat="server" Text="Segundo Cuarto Secundario:"></asp:Label>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:DropDownList ID="txt_SCS1" runat="server" Height="21px" Width="34px">
                                              <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                       </asp:DropDownList>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:Label ID="Label53" runat="server" Text="x"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_SCS2" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                &nbsp;<asp:Label ID="Label43" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label27" runat="server" Text="Tercer Cuarto Secundario:"></asp:Label>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:DropDownList ID="txt_TCS1" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                            </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:Label ID="Label54" runat="server" Text="x"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_TCS2" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label44" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label28" runat="server" Text="Cuarto Cuarto Secundario"></asp:Label>
                                                :</td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:DropDownList ID="txt_CCS1" runat="server" Height="21px" Width="34px">
                                             <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                        </asp:DropDownList>
                                                </td>
                                            <td class="text-center" style="width: 89px">
                                                <asp:Label ID="Label55" runat="server" Text="x"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_CCS2" runat="server" Height="21px" Width="34px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label45" runat="server" Text="&nbsp;mts."></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                      </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>

                                <label for="lblbaños" class="col-md-1 control-label">Baños:</label>
                                <div class="col-md-2" style="left: -10px; top: 0px">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddl_baños" class="form-control" runat="server" OnSelectedIndexChanged="ddl_baños_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                    </asp:DropDownList>
                                     <table class="nav-justified" style="width: 100%; height: 136px">
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label29" runat="server" Text="Primer Baño:"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_PB1" runat="server" Height="16px" Width="33px">
                                               <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                      </asp:DropDownList>
                                                <asp:Label ID="Label16" runat="server" Text="x"></asp:Label>
&nbsp;<asp:DropDownList ID="txt_PB2" runat="server" Height="16px" Width="33px">
     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                &nbsp;<asp:Label ID="Label46" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label30" runat="server" Text="Segundo Baño:"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_SB1" runat="server" Height="16px" Width="32px">
                                         <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                            </asp:DropDownList>
                                                <asp:Label ID="Label17" runat="server" Text="x"></asp:Label>
&nbsp;<asp:DropDownList ID="txt_SB2" runat="server" Height="16px" Width="30px">
     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label47" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label31" runat="server" Text="Tercer Baño:"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_TB1" runat="server" Height="16px" Width="33px">
                                                 <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Label ID="Label18" runat="server" Text="x"></asp:Label>
                                                <asp:DropDownList ID="txt_TB2" runat="server" Height="16px" Width="32px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label48" runat="server" Text="&nbsp;mts."></asp:Label>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 103px">
                                                <asp:Label ID="Label32" runat="server" Text="Cuarto Baño:"></asp:Label>
                                            </td>
                                            <td class="text-center">
                                                <asp:DropDownList ID="txt_CB1" runat="server" Height="16px" Width="32px">
                                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                     </asp:DropDownList>
                                                <asp:Label ID="Label20" runat="server" Text="x"></asp:Label>
                                                <asp:DropDownList ID="txt_CB2" runat="server" Height="16px" Width="39px">
                                               <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                                      </asp:DropDownList>
                                                <asp:Label ID="Label49" runat="server" Text="&nbsp;mts."></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                            
                        </div>
                    <hr />


                     <div class="form-group row">
                           
                                <label for="lblcocina" class="col-md-1 control-label">cocina:</label>
                                <div class="col-md-3">
                              <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" >
                                        <asp:ListItem>Ninguno(a)</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                    </asp:DropDownList>
                                           <div class="form-group row">
                                                    <label for="lbldimen" class="col-md-1 control-label">
                                <asp:Label ID="Label37" runat="server" Text=" "></asp:Label>
                                </label>&nbsp;<div class="col-md-3">
                                    <asp:DropDownList ID="txt_PCoc1" runat="server" Height="16px" Width="34px">
                                  <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                           </asp:DropDownList>
                                                        &nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="x"></asp:Label>
                                                        &nbsp;&nbsp;
                                    <asp:DropDownList ID="txt_PCoc2" runat="server" Height="16px" Width="33px">
                                     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label ID="Label50" runat="server" Text="&nbsp;mts."></asp:Label>

                                </div>
                                               </div>
                                    
  </ContentTemplate>
                            </asp:UpdatePanel>

                                </div>

                                <label for="comedor" class="col-md-1 control-label">comedor:</label>
                                <div class="col-md-2">
<asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList3" class="form-control"  runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" >
                                        <asp:ListItem>Ninguno(a)</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                    </asp:DropDownList>
  <div class="form-group row">
      <label for="lbldims" class="col-md-1 control-label">
                                <asp:Label ID="Label38" runat="server" Text=" "></asp:Label>
                                </label>
                                &nbsp;<div class="col-md-2">
                                    <asp:DropDownList ID="txt_Pcom1" runat="server" Height="16px" Width="31px" >
                               <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                              </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="x"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="txt_PCom2" runat="server" Height="17px" Width="38px">
                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                             </asp:DropDownList>
                                    <asp:Label ID="Label51" runat="server" Text="&nbsp;mts."></asp:Label>
                                </div>
      </div>

 </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                            <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                <ContentTemplate>
                                <label for="oficina" class="col-md-1 control-label">Oficina:</label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"  >
                                        <asp:ListItem>Ninguno(a)</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>

 <div class="form-group row">

                          
                           

                                

                                &nbsp;<div class="col-md-3" style="left: 0px; top: 0px">
                                    <asp:Label ID="Label33" runat="server" Text="Primera oficina:"></asp:Label>
                                    &nbsp;
                                    <asp:DropDownList ID="txt_POfi1" runat="server" Height="16px" Width="40px">
                                   <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                          </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text="x"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="txt_POfi2" runat="server" Height="16px" Width="38px">
                                   <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                          </asp:DropDownList>
                                    <asp:Label ID="Label7" runat="server" Text="mts."></asp:Label>
                                    <br />
                                    <br />
                                     <asp:Label ID="Label34" runat="server" Text="Segunda oficina:&nbsp;"></asp:Label>
                                    &nbsp; 
                                    <asp:DropDownList ID="txt_SOfi1" runat="server" Height="16px" Width="40px">
                                     <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:Label ID="Label01" runat="server" Text="x"></asp:Label>
                                    &nbsp;
                                    <asp:DropDownList ID="txt_SOfi2" runat="server" Height="16px" Width="40px">
                                   <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                          </asp:DropDownList>
                                    <asp:Label ID="Label3" runat="server" Text="mts."></asp:Label>
                                </div> 
                        </div>

  </ContentTemplate>
                            </asp:UpdatePanel>
                                </div>
                           
                   
                            

                      <div class="form-group row">
                           
                          
                                <div class="col-md-3" style="left: 0px; top: 0px">
                                    
                                    <br />
                                    <br />
                                </div>

                                <label for="lbldims" class="col-md-1 control-label"></label>
                                <div class="col-md-2" style="width: 30%;">
                                   
                                    <br />
                                    <br />
                                    <br />
                                </div>

                                <label for="lbldimb" class="col-md-1 control-label"></label>
                                <div class="col-md-3">
                                   
                                    <br />
                                    <br />
                                    <br />
                                </div>


                         


                   
<hr />
                       
                    <div class="form-group row">
                             

                                <label for="lblacab" class="col-md-1 control-label">acabado:</label>
                                <div class="col-md-3">
                                     <asp:DropDownList ID="ddl_acabado" class="form-control" runat="server">
                                          <asp:ListItem Value="1"> Standard </asp:ListItem>
                                        <asp:ListItem Value="2"> Plus </asp:ListItem>
                            </asp:DropDownList>
                                     <%--<asp:Label ID="Label1" runat="server" Text="Procesando..."></asp:Label></td>--%>
                                </div>

                                <label for="plantas" class="col-md-1 control-label">plantas:</label>
                                <div class="col-md-2">
                                    <asp:DropDownList ID="ddl_plantas" class="form-control" runat="server">
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>

                                    </asp:DropDownList>
                                </div>

                                <label for="oficina" class="col-md-1 control-label">salas:</label>
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList4" class="form-control"  runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" >
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>
                                        <div class="form-group row">

                           
                                &nbsp;<div class="col-md-3">
                                    &nbsp;<asp:Label ID="Label35" runat="server" Text="Primera Sala:"></asp:Label>
                                    <asp:DropDownList ID="txt_PSal1" runat="server" Height="27px" Width="33px">
                                    <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                         </asp:DropDownList>
                                    <asp:Label ID="Label8" runat="server" Text="x"></asp:Label>
                                    <asp:DropDownList ID="txt_PSal2" runat="server" Height="16px" Width="36px">
                                    <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                         </asp:DropDownList>
                                    <asp:Label ID="Label9" runat="server" Text="mts."></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label36" runat="server" Text="Segunda Sala:"></asp:Label>
&nbsp;<asp:DropDownList ID="txt_SSal1" runat="server" Height="16px" Width="36px">
                                    <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                         </asp:DropDownList>
                                    <asp:Label ID="Label21" runat="server" Text="x"></asp:Label>
                                    <asp:DropDownList ID="txt_SSal2" runat="server" Height="16px" Width="39px">
                                <asp:ListItem Value="0">  </asp:ListItem>
                                        <asp:ListItem Value="1">  </asp:ListItem>
                                        <asp:ListItem Value="2">  </asp:ListItem>
                                        <asp:ListItem Value="3">  </asp:ListItem>
                                        <asp:ListItem Value="4">  </asp:ListItem>
                                        <asp:ListItem Value="5">  </asp:ListItem>
                                        <asp:ListItem Value="6">  </asp:ListItem>
                                        <asp:ListItem Value="7">  </asp:ListItem>
                                        <asp:ListItem Value="8">  </asp:ListItem>
                                        <asp:ListItem Value="9">  </asp:ListItem>
                                             </asp:DropDownList>
                                    <asp:Label ID="Label22" runat="server" Text="mts."></asp:Label>
                                </div>
                                </div>
                         

                        </div>
                      </div>
                 
                           
                              
                           
                        </div>
                    </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>




                        </div>
                     <hr />

                       
     <div class="form-group row">
                            <h4><span class="glyphicon glyphicon-pencil"></span>Paso 2: </h4>
                            <h6><span class="glyphicon glyphicon-check"></span>Cotize, vea el precio, y tamaño</h6>             
                    <div class="col-md-12">
                        <div class="pull-right">
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                        <ProgressTemplate>
                                          
                                                <tr>
                                                    <td style="width: 100px">
                                                       <%-- <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/indicator.gif" /></td>--%>
                                                    <td class="auto-style2">
                                                        <%--<asp:Label ID="Label1" runat="server" Text="Procesando..."></asp:Label></td>--%>
                                                </tr>
                                            </table>
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                    <asp:Label ID="lblprecio" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="btnCotizar" Text="cotizar" class="btn btn-success" runat="server" OnClick="btnCotizar_Click1" />
                                    <asp:Button ID="botonlimpiar" class="btn btn-success" Text="Limpiar"  runat="server" OnClick="botonlimpiar_Click1"   />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        
                          
                        </div>
                    </div>
             </div>
                          <hr />
                <br>
                <br />

 <div class="form-group row">
                            <h4><span class="glyphicon glyphicon-pencil"></span>Paso 3: </h4>
                            <h6><span class="glyphicon glyphicon-check"></span>Te gusto el precio, llena el formulario y nos pondremos en contacto</h6>
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
                                        <asp:Button ID="Button1" runat="server" class="btn btn-info" OnClick="Button1_Click" Text="Enviar Datos de la Cotizacion " />
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View1" runat="server">
                            </asp:View>
                        </asp:MultiView>
                <br>
            </div>
        </div>
    
    </div>
    </div>
    </div>
    </form>
</asp:Content>



