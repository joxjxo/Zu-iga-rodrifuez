using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{
   public class MPlanos : IPlanos
    {
        DAL.Interfaces.IPlanos pl;

        public MPlanos()
        {
            pl = new DAL.Metodos.MPlanos();
        }

        public void Actualizarplanos(planos plano)
        {
           pl.Actualizarplanos(plano);
        }

        public planos Buscarplanos(int id_plano)
        {
            return pl.Buscarplanos(id_plano);
        }

        public void Eliminarplano(int idplano)
        {
            pl.Eliminarplano(idplano);
        }

        public void InsertarPlanos(planos planos)
        {
            pl.InsertarPlanos(planos);
        }

        public List<planos> Listarplanos()
        {
            return pl.Listarplanos();
        }
    }
}
