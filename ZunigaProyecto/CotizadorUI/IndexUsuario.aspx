<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario.Master" AutoEventWireup="true" CodeBehind="IndexUsuario.aspx.cs" Inherits="NuevaInterfazBase.IndexUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <!-- Ingresar a la herramienta de cotizacion -->
    <div class="wrapper overlay" style="background-image:url(Usuario/Images/deskgreenplant.png)">
    <article id="pageintro" class="hoc clear"> 
      <h3 class="heading">Estamos para Ayudarte</h3>
      <p>Realiza la cotización de tu casa de una manera mas Fácil</p>
      <footer><a class="btn" href="ResumenCotizacion.aspx">Cotizar</a></footer>
    </article>
  </div>

    <!-- Div que posee todo lo del index -->
    <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->

      <a name="nosotros"></a>
    <div class="group">
      <div class="one_half first">
        <p class="font-xs nospace"></p>
        <p>Somos una empresa compuesta por un equipo de profesionales especializados en nuestras diferentes áreas de negocio.
            <br />
            <br />
Nuestro objetivo es la plena satisfacción de nuestros clientes, ofreciendo un servicio profesional y de calidad, convirtiéndolos en la solución de problemas y adaptándonos a sus exigencias.</p>
        
      </div>
      <div class="one_half">
           <li class="one_half first btmspace-50">
            <article>
              <p class="nospace"> Aseguramos que su obra se entrega con la calidad, presupuesto y plazo acordados.</p>
            </article>
               
          </li>
          </div>
       
      </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
  </main>
</div>


      <div class="wrapper bgded" style="background-image:url('Usuario/images/background_cad.png');">
  <div class="hoc split clear">
    <section> 
      <!-- ################################################################################################ -->
      <a name="servicios"></a>
        <h2  class="heading">Nuestros Servicios:</h2>
      <p class="btmspace-50">Ofrecemos el servicio de cotizacion en nuestra pagina web para que puedas tener una vista mas cercana a tu casa</p>
      <ul class="nospace group elements">
        <li>
          <article><i class="fa fa-wpexplorer"></i>
            <h6 class="heading">Experiencia</h6>
            <p>Tenemos mas de 10 anos de experiencia en construcción [&hellip;]</p>
          </article>
        </li>
        <li>
          <article><i class="fa fa-eye-slash"></i>
            <h6 class="heading">Otros Servicios</h6>
            <p>Contamos también con alta experiencia en diseño y contrucción de tiendas, no dude en ponerse en contacto con nosotros. [&hellip;]</p>
          </article>
        </li>
      </ul>
      <!-- ################################################################################################ -->
    </section>
  </div>
        </div>

</asp:Content>
