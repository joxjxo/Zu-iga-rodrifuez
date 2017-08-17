using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cotizador.DATA;
using System.Threading.Tasks;

namespace Cotizador.DAL.Interfaces
{
    public interface Itrabajadores
    {
        List<trabajadores> ListarTrabajadores();
        trabajadores BuscarTrabajadores(int idtrabaj);

        trabajadores BuscarUsuarioLogin(int idtrabaj);

        trabajadores UsuarioRol(int idtrabaj);

        void InsertarTrabajadores(trabajadores trabajadores);
        void ActualizarTrabajadores(trabajadores trabajadores);
        void EliminarTrabajadores(int idtrabaj);
    }
}
