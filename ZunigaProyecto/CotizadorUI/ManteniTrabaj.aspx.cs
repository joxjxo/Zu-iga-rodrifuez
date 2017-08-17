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
    public partial class ManteniTrabaj : System.Web.UI.Page
    {
        Itrabajadores tr = new Mtrabajadores();
        protected void Page_Load(object sender, EventArgs e)
        {
            divMantenimiento.Visible = false;

            Iroll rl = new Mroll();
            List<roll> listaRoll = rl.ListarRoll();
            var lista = listaRoll.Select(x => x.Nombre);

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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                tr.EliminarTrabajadores(Convert.ToInt32(txtId.Text));
                MostarMensaje("Trabajador Eliminado");
                divMantenimiento.Visible = false;
                txtId.ReadOnly = false;
                txtId.Text = string.Empty;
                txtId.Focus();
                txtId.Enabled = true;
            }
            catch (Exception)
            {
                MostarMensajeError("Ocurrio un error");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                trabajadores trabaj = new trabajadores
                {
                    IDT = Convert.ToInt32(txtId.Text),
                    Nombre = txtNombre.Text,
                    Apell1 = txtApell1.Text,
                    Apell2 = txtApell2.Text,
                    Roll = Convert.ToInt32(txtroll.Text),
                    Contrasena = txtContraseña.Text,
                    correo = txtCorreo.Text,
                    telefono = Convert.ToInt32(txtTelefono.Text)
                };
                Itrabajadores tr = new Mtrabajadores();
                tr.ActualizarTrabajadores(trabaj);
                MostarMensaje("trabajador Modificado");
                divMantenimiento.Visible = false;
                txtId.Enabled = true;
                txtId.Text = string.Empty;
                txtId.Focus();
            }
            catch (Exception)
            {
                MostarMensajeError("Ocurrio un error");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                var trabaj = tr.BuscarTrabajadores(Convert.ToInt32(txtId.Text));
                if (trabaj != null)
                {
                    txtNombre.Text = trabaj.Nombre;
                    txtApell1.Text = trabaj.Apell1;
                    txtApell2.Text = trabaj.Apell2;
                    txtroll.Text = trabaj.Roll.ToString();
                    txtContraseña.Text = trabaj.Contrasena;
                    txtCorreo.Text = trabaj.correo;
                    txtTelefono.Text = trabaj.telefono.ToString();
                    divMantenimiento.Visible = true;
                    txtId.Enabled = false;
                }
                else
                {
                    MostarMensajeError("el trabajador no existe");
                }
            }
            catch (Exception)
            {
                MostarMensajeError("Ocurrio un error");
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