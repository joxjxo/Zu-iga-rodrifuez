using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NuevaInterfazBase
{
    public partial class NewLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {


        }



        public void validarLogin()
        {


            /*Itrabajadores itrabaj = new Mtrabajadores();
            trabajadores trabaj = itrabaj.BuscarUsuarioLogin(Convert.ToInt32(txt_idtrabaj.Text));

            try
            {
                if (txt_password.Text == trabaj.Contrasena && Convert.ToInt32(txt_idtrabaj.Text) == trabaj.IDT)
                {
                    //  string usuario = trabaj.Nombre.ToUpper() +"  " + trabaj.Apell1.ToUpper();

                    Session["usuario"] = trabaj.IDT;
                    Session.Timeout = 10;
                    //Session["usuario2"] = trabaj.IDT;
                    //Session.Timeout = 10;
                    //int codigo = trabaj.IDT;
                    Response.Redirect("Menu.aspx"/*?cod=" + codigo.ToString());
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
        */
        }
    }
}