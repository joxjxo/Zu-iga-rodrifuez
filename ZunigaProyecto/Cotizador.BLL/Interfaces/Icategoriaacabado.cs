using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Cotizador.DATA;
using System.Threading.Tasks;

namespace Cotizador.BLL.Interfaces
{
    public interface Icategoriaacabado
    {
        List<categoriaacabado> ListarCategoriaAcabado();
        categoriaacabado BuscarCategoriaAcabado(int idCatAcab);
        void InsertarCategoriaAcabador(categoriaacabado categoriaacabado);
        void ActualizarCategoriaAcabado(categoriaacabado categoriaacabado);
        void EliminarCategoriaAcabado(int idCatAcab);
    }
}
