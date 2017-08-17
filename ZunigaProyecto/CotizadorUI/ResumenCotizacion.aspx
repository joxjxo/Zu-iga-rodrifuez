<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario.Master" AutoEventWireup="true" CodeBehind="ResumenCotizacion.aspx.cs" Inherits="CotizadorUI.ResumenCotizacion" %>
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
    <style type="text/css">
        .panel-green > .panel-heading {
    border-color: #5cb85c;
    color: #fff;
    background-color: #5cb85c;
}

.panel-heading {
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
}

.panel-primary {
    border-color: #337ab7;
   
}

.panel {
    margin-bottom: 20px;
    background-color: #fff;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
        }
    </style>


    <link href="Usuario/layout/NewStyles/bootstrapNew.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Usuario/layout/NewStyles/sb-adminNew.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="Usuario/layout/NewStyles/morrisNew.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Usuario/layout/NewStyles/font-awesomeNEW.min.css" rel="stylesheet" type="text/css">
  <br />
    <br />
    <hr />
    <div class="wrapper row3">
        <main class="hoc container clear">
            <div class="content">

                <!-- _Panel Verde-->
                <div class="col-sm-6">
                    <div class="panel panel-green" style="border-color:#5cb85c">
                        <div class=" panel-heading">
                            <h3>Acabado Standart </h3>
                        </div>
                        <div class="panel-body">
                             <p> El precio del metro cuadrado es de un valor de: $550 </p>
                             <p> Planos constructivos aprobados por CFIA y Municipalidad. (los impuestos los tiene que cancelar el cliente)  </p>
                             <p>Lámparas tipo spot en áreas de comedor, sala y dormitorio principal, las demás salidas van con plafones tipo bombillo (el cliente podrá enviar las lámparas y se le instalarán sin ningún costo adicional).
                             </p>
                             </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="panel panel-primary" style="border-color:#337ab7">
                        <div class="panel-heading">
                            <h3> Acabado Plus </h3>
                        </div>
                        <div class="panel-body">
                            <p> El precio del metro cuadrado es de un valor de: $700 </p>
                            <p>Marcos de puertas internas en madera de pino o laurel</p>
                            <p>Todas las salidas eléctricas como tomas, apagadores, tv, teléfono y salidas 220 serán marca Bticino color a escoger por el cliente.</p>
                            <p>Cerámica en cochera será antideslizante, tipo y color a escoger por el cliente (máximo ¢9.000 x m2).</p>
                        </div>
                    </div>
                </div>
               
                <!-- -->
                <hr />
                


                 <div class="col-sm-6">
                    <div class="panel panel-green" style="border-color:#5cb85c">
                        <div class=" panel-heading">
                            <h3>Cotizador Basico </h3>
                        </div>
                        <div class="panel-body">
                             <p> El precio del metro cuadrado es de un valor de: $550 </p>
                             <p> Planos constructivos aprobados por CFIA y Municipalidad. (los impuestos los tiene que cancelar el cliente)  </p>
                             <p>Lámparas tipo spot en áreas de comedor, sala y dormitorio principal, las demás salidas van con plafones tipo bombillo (el cliente podrá enviar las lámparas y se le instalarán sin ningún costo adicional).
                             </p>
                             <asp:CheckBox ID="chkCotizadorAceptoCondicionesBasico" CssClass="checkbox-inline" Text="Acepto las condiciones" runat="server" /> <br /> 
                            <asp:Button ID="btnCotizar" CssClass="btn btn-success" OnClick="btnCotizar_Click" runat="server" Text="Button" />
                           </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="panel panel-primary" style="border-color:#337ab7">
                        <div class="panel-heading">
                            <h3> Cotizador Personalizado </h3>
                        </div>
                        <div class="panel-body">
                            <p> El precio del metro cuadrado es de un valor de: $700 </p>
                            <p>Marcos de puertas internas en madera de pino o laurel</p>
                            <p>Todas las salidas eléctricas como tomas, apagadores, tv, teléfono y salidas 220 serán marca Bticino color a escoger por el cliente.</p>
                            <p>Cerámica en cochera será antideslizante, tipo y color a escoger por el cliente (máximo ¢9.000 x m2).</p>
                             <asp:CheckBox ID="chkAceptoCondicionesAvanzada" CssClass="checkbox-inline" Text="Acepto las condiciones" runat="server" /> <br /> 
                            <asp:Button ID="btnCotizadorAvanzado" CssClass="btn btn-success" OnClick="btnCotizadorAvanzado_Click" runat="server" Text="Button" />
                             </div>
                    </div>
                </div>


              <%--  <form runat="server">
                    
                <div style="align-content: center">
                   
                </div>
                    </form>--%>
                

            </div>
        </main>
    </div>
        
     </form>   
                


</asp:Content>
