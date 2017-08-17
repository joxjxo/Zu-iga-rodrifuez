using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.DAL.Interfaces
{
    public interface Idatoscliente
    {
        List<datoscliente> ListarDatosCliente();
        datoscliente BuscarDatosCliente(int idDatosClien);
        void InsertarDatosClienter(datoscliente datoscliente);
        void ActualizarDatosCliente(datoscliente datoscliente);
        void EliminarDatosCliente(int idDatosClien);
    }
}
