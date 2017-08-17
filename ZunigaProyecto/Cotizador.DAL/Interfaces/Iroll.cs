using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;


namespace Cotizador.DAL.Interfaces
{
    public interface Iroll
    {
        List<roll> ListarRoll();
        roll BuscarRoll(int idroll);
        void InsertarRoll(roll Roll);
        void ActualizarRoll(roll roll);
        void EliminarRoll(int idroll);
    }
}
