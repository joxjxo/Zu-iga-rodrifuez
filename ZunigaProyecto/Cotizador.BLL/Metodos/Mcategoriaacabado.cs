using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{

    public class Mcategoriaacabado : Icategoriaacabado
    {
        DAL.Interfaces.Icategoriaacabado ca;

        public Mcategoriaacabado()
        {
            ca = new DAL.Metodos.Mcategoriaacabado();
        }

        public void ActualizarCategoriaAcabado(categoriaacabado categoriaacabado)
        {
            ca.ActualizarCategoriaAcabado(categoriaacabado);
        }

        public categoriaacabado BuscarCategoriaAcabado(int idCatAcab)
        {
            return ca.BuscarCategoriaAcabado(idCatAcab);
        }

        public void EliminarCategoriaAcabado(int idCatAcab)
        {
            ca.EliminarCategoriaAcabado(idCatAcab);
        }

        public void InsertarCategoriaAcabador(categoriaacabado categoriaacabado)
        {
            ca.InsertarCategoriaAcabador(categoriaacabado);
        }

        public List<categoriaacabado> ListarCategoriaAcabado()
        {
            return ca.ListarCategoriaAcabado();
        }
    }

}
