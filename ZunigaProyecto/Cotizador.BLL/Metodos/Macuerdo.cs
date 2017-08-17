using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{
   public class Macuerdo : Iacuerdos
    {
        DAL.Interfaces.Iacuerdos ca;

        public Macuerdo()
        {
            ca = new DAL.Metodos.Macuerdo();
        }

        public void ActualizarDocumento(acuerdos acuerdos)
        {
            ca.ActualizarDocumento(acuerdos);
        }

        public acuerdos Buscaracuerdos(int id_documento)
        {

            return ca.Buscaracuerdos(id_documento);
        }

        public void EliminarDocumento(int id_documento)
        {
            ca.EliminarDocumento(id_documento);
        }

        public void InsertarDocumento(acuerdos acuerdos)
        {
            ca.InsertarDocumento(acuerdos);
        }

        public List<acuerdos> ListarDocumento()
        {
            return ca.ListarDocumento();
        }
    }
}
