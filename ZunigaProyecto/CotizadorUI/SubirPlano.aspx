<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="SubirPlano.aspx.cs" Inherits="CotizadorUI.SubirPlano" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Proyectos</h3>
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
                            <h2>Subir planos</h2>

                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <br />
                            <form class="form-horizontal form-label-left">
                                <div style="font-family: Arial">

                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="btn_upload" runat="server" Text="upload" OnClick="btn_upload_Click" />
                                    <br />
                                    <br />
                                    <asp:GridView ID="GridView1"  CssClass="table table-striped" runat="server" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="File">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Size" HeaderText="Size in bytes" />
                                            <asp:BoundField DataField="Type" HeaderText="Files type" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>

                                    <%--<asp:Button ID="btn_insertar" runat="server" OnClick="btn_insertar_Click" Text="Insertar" />
                                    <input type="button" id="btnAdjuntar" runat="server" value="Adjuntar" class="btn btn-success" onclick="adjuntarPlano()" />--%>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>


    <script>
        function adjuntarPlano() {
            document.getElementById('MainContent_FileUpload1').click();
            document.getElementById('MainContent_txtImagen').readOnly = true;
        }
    </script>
</asp:Content>
