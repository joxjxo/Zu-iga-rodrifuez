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
    public class Mroll : Iroll
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mroll()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
           _db = _conexion.Open();
        }

        public void ActualizarRoll(roll roll)
        {
            _db.Update(roll);
        }

        public roll BuscarRoll(int idroll)
        {
            return _db.Select<roll>(x => x.id_rol == idroll).FirstOrDefault();
        }

        public void EliminarRoll(int idroll)
        {
            _db.Delete<roll>(x => x.id_rol == idroll);
        }

        public void InsertarRoll(roll Roll)
        {
            _db.Insert(Roll);
        }

        public List<roll> ListarRoll()
        {
          return _db.Select<roll>();
        }
    }
}
