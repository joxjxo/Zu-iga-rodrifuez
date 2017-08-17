using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;
using Cotizador.BLL.Metodos;

namespace NuevaInterfazBase
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string n;
            //int c=123;
            //Itrabajadores tr = new Mtrabajadores();
            //List<trabajadores> listatrabaj = tr.ListarTrabajadores();
            //var lista = listatrabaj.Select(x => new{ x.Nombre, x.IDT }).Where(x => x.IDT==c);
            //n = Convert.ToString(lista);

            //Label lb = new Label();
            //lb.Text = n;
            //lb = lblNombre;

            if (Request.Params["parametro"] != null)
            {
                lblNombre.Text = Request.Params["parametro"];
            }

        }
    }
}