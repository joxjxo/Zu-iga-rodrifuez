using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{
    public class Mcotizacion : Icotizacion
    {
        DAL.Interfaces.Icotizacion dc;
        public Mcotizacion()
        {
            dc = new DAL.Metodos.Mcotizacion();
        }
        public void ActualizarCotizacion(Cotizacion cotizacion)
        {
            dc.ActualizarCotizacion(cotizacion);
        }

        public Cotizacion BuscarCotizacion(int idDatosClien)
        {
            return dc.BuscarCotizacion(idDatosClien);
        }

        public void EliminarCotizacion(int id)
        {
            dc.EliminarCotizacion(id);
        }

        public void InsertarCotizacion(Cotizacion cotizacion)
        {
            dc.InsertarCotizacion(cotizacion);
        }

        public List<Cotizacion> ListarCotizacion()
        {
            return dc.ListarCotizacion();
        }
    }
}
