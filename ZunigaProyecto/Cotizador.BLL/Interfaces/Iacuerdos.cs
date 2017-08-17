using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface Iacuerdos
    {
        void InsertarDocumento(acuerdos acuerdos);
        List<acuerdos> ListarDocumento();
        acuerdos Buscaracuerdos(int id_documento);


        void ActualizarDocumento(acuerdos acuerdos);
        void EliminarDocumento(int id_documento);
    }
}
