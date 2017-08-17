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
    public partial class ListarDocumentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             Iacuerdos tr = new Macuerdo();
            List<acuerdos> listatrabaj = tr.ListarDocumento();
            var lista = listatrabaj.Select(x => new { x.Id_Documento, x.Documento, x.Descripcion });
            GridView1.DataSource = lista;
            GridView1.DataBind();
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoDocumento.aspx");
        }
    }
}