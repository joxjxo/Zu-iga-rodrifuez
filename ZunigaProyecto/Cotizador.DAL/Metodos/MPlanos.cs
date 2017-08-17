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
    public class MPlanos : IPlanos
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public MPlanos()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void Actualizarplanos(planos plano)
        {
            _db.Update(plano);
        }

        public planos Buscarplanos(int id_plano)
        {
            return _db.Select<planos>(x=> x.id_plano == id_plano).FirstOrDefault();
        }

        public void Eliminarplano(int idplano)
        {
            _db.Delete<planos>(x => x.id_plano == idplano);
        }

        public void InsertarPlanos(planos planos)
        {
            _db.Insert(planos);
        }

        public List<planos> Listarplanos()
        {
            return _db.Select<planos>();
        }
    }
}
