using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CotizadorUI
{
    public partial class ResumenCotizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCotizar_Click(object sender, EventArgs e)
        {
            if (chkCotizadorAceptoCondicionesBasico.Checked)
            {
                Response.Redirect("Cotizador.aspx");
            }
            else
            {
                MostarMensajeError("Debe aceptar los terminos y condiciones");

            }
        }

        protected void btnCotizadorAvanzado_Click(object sender, EventArgs e)
        {
            if (chkAceptoCondicionesAvanzada.Checked)
            {
                Response.Redirect("CotizadorAvanzado.aspx");
            }
            else
            {
                MostarMensajeError("El checkbox no esta marcado");

            }
        

    }
    private void MostarMensaje(string texto)
        {
            mensaje.Visible = true;
            mensajeError.Visible = false;
            textoMensajeError.InnerHtml = string.Empty;
            textoMensaje.InnerHtml = texto;
        }

        private void MostarMensajeError(string texto)
        {
            mensaje.Visible = false;
            mensajeError.Visible = true;
            textoMensajeError.InnerHtml = texto;
            textoMensaje.InnerHtml = string.Empty;
        }
    }
}