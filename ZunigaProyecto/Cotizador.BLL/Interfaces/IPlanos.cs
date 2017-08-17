using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface IPlanos
    {
        void InsertarPlanos(planos planos);
        List<planos> Listarplanos();
        planos Buscarplanos(int id_plano);


        void Actualizarplanos(planos plano);
        void Eliminarplano(int idplano);
    }
}
