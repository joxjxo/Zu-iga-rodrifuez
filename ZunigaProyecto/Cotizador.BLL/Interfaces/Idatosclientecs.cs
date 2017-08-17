using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface Idatosclientecs
    {
        List<datoscliente> ListarDatosCliente();
        datoscliente BuscarDatosCliente(int idDatosClien);
        void InsertarDatosClienter(datoscliente datoscliente);
        void ActualizarDatosCliente(datoscliente datoscliente);
        void EliminarDatosCliente(int idDatosClien);
    }
}
