using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cotizador.DATA;
using Cotizador.DAL;
using Cotizador.BLL.Interfaces;
using Cotizador.BLL.Metodos;

namespace CotizadorUI
{
    public partial class Reportes : System.Web.UI.Page
    {
        public int prueba = 0;
        public int prueba2 = 0;
        public int acabado1 = 1;
        public int acabado2 = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
            Idatoscotizador tr = new Mdatoscotizador();

            List<datoscotizador> listatrabaj = tr.ListarDatosCotizador();
            //var id = listatrabaj.Select(x => x.IDD);
            //ddlid.DataSource = id;
            //ddlid.DataBind();
            //var lista = listatrabaj.Select(x => new { x.IDD }).Where( ).Count());
            var lista = listatrabaj.Where(x =>  x.Acabado==1 ).Count();
            //var lista2 = listatrabaj.Select(x => new { x.Cuartos_secundarios }).Count();
            var lista2 = listatrabaj.Where(x => x.Acabado == 2).Count();
            prueba = Convert.ToInt32(lista.ToString());
            prueba2 = Convert.ToInt32(lista2.ToString());
        }
    }
}