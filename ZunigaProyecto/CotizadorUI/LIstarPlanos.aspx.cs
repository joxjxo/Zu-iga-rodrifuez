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
    public partial class LIstarPlanos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IPlanos tr = new MPlanos();
            List<planos> listatrabaj = tr.Listarplanos();
            var lista = listatrabaj.Select(x => new { x.id_plano, x.Nombre_plano, x.Plano, x.Documento });
            GridView1.DataSource = lista;
            GridView1.DataBind();
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoPlano.aspx");
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {

        }
    }
}