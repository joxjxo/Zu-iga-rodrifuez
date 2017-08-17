using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cotizador.BLL.Interfaces;
using Cotizador.BLL.Metodos;
using Cotizador.DATA;

namespace CotizadorUI
{
    public partial class IngresarTrabajFinal : System.Web.UI.Page
    {
        Itrabajadores tr = new Mtrabajadores();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Iroll rl = new Mroll();
            //List<roll> listaRoll = rl.ListarRoll();
            //var lista = listaRoll.Select(x => x.Nombre);
            //ddl_Rol.DataSource = lista;
            //ddl_Rol.DataBind();

            int trabajo = Convert.ToInt32(Session["usuario"]);
            Itrabajadores itrabaj = new Mtrabajadores();
            trabajadores trabaj = itrabaj.BuscarUsuarioLogin(trabajo);
            if (trabaj.Roll == 1 || trabaj.Roll == 4 || trabaj.Roll == 6)
            {

            }
            else
            {
                Response.Redirect("Menu.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        
        protected void btnlogeo_Click(object sender, EventArgs e)
        {
            try
            {
                trabajadores trabaj = new trabajadores
                {
                    IDT = Convert.ToInt32(txt_id.Text),
                    Nombre = txt_nombre.Text,
                    Apell1 = txt_apellido1.Text,
                    Apell2 = txt_apellido2.Text,
                    Roll = Convert.ToInt32(ddl_Rol.SelectedValue),
                    Contrasena = txt_contrasena.Text,
                    correo = txt_correo.Text,
                    telefono = Convert.ToInt32(txt_telefono.Text)


                };
                Itrabajadores tr = new Mtrabajadores();
                tr.InsertarTrabajadores(trabaj);
                MostarMensaje("trabajador insertado");
            }
            catch (Exception ex)
            {
                MostarMensajeError("error al insertar");

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
