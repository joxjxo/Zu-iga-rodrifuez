using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.DAL.Interfaces
{
    public interface Icategoriaacabado
    {
        List<categoriaacabado> ListarCategoriaAcabado();
        categoriaacabado BuscarCategoriaAcabado(int idCatAcab);
        categoriaacabado Buscarprecio(int Precio);
        void InsertarCategoriaAcabador(categoriaacabado categoriaacabado);
        void ActualizarCategoriaAcabado(categoriaacabado categoriaacabado);
        void EliminarCategoriaAcabado(int idCatAcab);
    }
}
