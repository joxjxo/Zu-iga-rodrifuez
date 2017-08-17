using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.DAL.Interfaces;
using ServiceStack.OrmLite;
using System.Data;

namespace Cotizador.DAL.Metodos
{
    public class Macuerdo : Iacuerdos
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Macuerdo()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarDocumento(acuerdos acuerdos)
        {
            _db.Update<acuerdos>();
        }

        public acuerdos Buscaracuerdos(int id_documento)
        {
            return _db.Select<acuerdos>(x => x.Id_Documento == id_documento).FirstOrDefault();
        }

        public void EliminarDocumento(int id_documento)
        {
            _db.Delete<acuerdos>(x => x.Id_Documento == id_documento);
        }

        public void InsertarDocumento(acuerdos acuerdos)
        {
            _db.Insert<acuerdos>();
        }

        public List<acuerdos> ListarDocumento()
        {
            return _db.Select<acuerdos>();
        }
    }
}
