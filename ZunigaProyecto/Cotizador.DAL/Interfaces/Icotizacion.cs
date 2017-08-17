using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.DAL.Interfaces
{
    public interface Icotizacion
    {
        List<Cotizacion> ListarCotizacion();
        Cotizacion BuscarCotizacion(int idCatAcab);

        void InsertarCotizacion(Cotizacion cotizacion);
        void ActualizarCotizacion(Cotizacion cotizacion);
        void EliminarCotizacion(int id);
    }
}
