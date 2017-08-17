using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface Itrabajadoreslogeo
    {
        List<trabajadoreslogeo> ListarTrabajadoresLogeo();
        trabajadoreslogeo BuscarTrabajadoresLogeo(int idtl);
        void InsertarTrabajadoresLogeo(trabajadoreslogeo trabajadoreslogeo);
        void ActualizarTrabajadoresLogeo(trabajadoreslogeo trabajadoreslogeo);
        void EliminarTrabajadoresLogeo(int idtl);
    }
}
