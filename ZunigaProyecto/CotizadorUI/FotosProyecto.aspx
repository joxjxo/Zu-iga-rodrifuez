<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario.Master" AutoEventWireup="true" CodeBehind="FotosProyecto.aspx.cs" Inherits="CotizadorUI.FotosProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <!-- Slider --> 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <div class="wrapper row3" align="center">
        <main class="hoc container clear">
            <!-- main body -->
            <div class="container" style="align-content:center">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="Usuario/images/Construccion.png" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="Usuario/images/Desarrollo-condominios.png" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

     <%--   <div class="item">
            <img src="Usuario/images/tipoConstruccion.png" alt="Chicago" style="width: 100%;">
            <div class="carousel-caption">
                <h3></h3>
                <p></p>
            </div>
        </div>--%>
    
     
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


                
               <h1> Contruccion de Condominos: </h1>
               <p style="font-size:x-large">Proyecto desarrollado en los alrededores de Alajuela centro. <br />Proyecto que cuenta con una estructua de 2 pisos, con un diseño hecho por uno de nuestros trabajadores. <br />
              Cuenta con dos baños, una salacomedor, 4 cuartos los cuales 2 estan en la planta de abajo y los otros 2 en la plata de arriba
                    </p>
               <p></p>

                <!-- ################################################################################################ -->

</div>
           
      

           

        </main>
    </div>
    <script type="text/javascript">
        $(function () {
            $("#rondellCarousel").rondell({
                preset: "carousel",
            });
        });
    </script>



</asp:Content>



