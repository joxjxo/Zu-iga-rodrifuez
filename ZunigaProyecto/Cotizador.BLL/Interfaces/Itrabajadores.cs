using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface Itrabajadores
    {
        List<trabajadores> ListarTrabajadores();
        trabajadores BuscarTrabajadores(int idtrabaj);
        void InsertarTrabajadores(trabajadores trabajadores);
        void ActualizarTrabajadores(trabajadores trabajadores);
        trabajadores BuscarUsuarioLogin(int idtrabaj);

        trabajadores UsuarioRol(int idtrabaj);
        void EliminarTrabajadores(int idtrabaj);
    }
}
