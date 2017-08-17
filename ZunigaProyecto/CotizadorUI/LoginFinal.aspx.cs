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
    public partial class LoginFinal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            
        }

        protected void btnlogeo_Click(object sender, EventArgs e)
        {

            validarLogin();

           
        }
        public void validarLogin()
        {


            Itrabajadores itrabaj = new Mtrabajadores();
            trabajadores trabaj = itrabaj.BuscarUsuarioLogin(Convert.ToInt32(txt_idtrabaj.Text));

            try
            {
                if (txt_password.Text == trabaj.Contrasena && Convert.ToInt32(txt_idtrabaj.Text) == trabaj.IDT)
                {
                    //  string usuario = trabaj.Nombre.ToUpper() +"  " + trabaj.Apell1.ToUpper();

                    Session["usuario"] = trabaj.IDT;
                    Session.Timeout = 10;
                    if (trabaj.Roll == 1)
                    {
                        Response.Redirect("IndexDashboard.aspx?parametro=" + txt_idtrabaj.Text.ToString());
                    }
                    else if (trabaj.Roll == 2) {
                        Response.Redirect("Dashboard Agente.aspx?parametro=" + txt_idtrabaj.Text.ToString());
                    } else if (trabaj.Roll ==3) {
                        Response.Redirect("Dashboard Consultor.aspx?parametro=" + txt_idtrabaj.Text.ToString());
                    }
                    
                }
                else if (txt_password.Text != trabaj.Contrasena && Convert.ToInt32(txt_idtrabaj.Text) == trabaj.IDT)
                {

                    txt_password.Text = string.Empty;
                    txt_password.Focus();
                    Response.Write("contraseña incorrecta");

                }
            }
            catch (Exception)
            {
                txt_password.Text = string.Empty;
                txt_idtrabaj.Text = string.Empty;
                txt_idtrabaj.Focus();

            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexUsuario.aspx");
        }
    }
}
