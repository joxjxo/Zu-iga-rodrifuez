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
    public class Mcategoriaacabado : Icategoriaacabado
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mcategoriaacabado()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarCategoriaAcabado(categoriaacabado categoriaacabado)
        {
            _db.Update<categoriaacabado>();
        }

        public categoriaacabado BuscarCategoriaAcabado(int idCatAcab)
        {
            return _db.Select<categoriaacabado>(x => x.IDAcabado == idCatAcab).FirstOrDefault();
        }
        public categoriaacabado Buscarprecio(int idCatAcab)
        {
            return _db.Select<categoriaacabado>(x => x.IDAcabado == idCatAcab).FirstOrDefault();
        }

        public void EliminarCategoriaAcabado(int idCatAcab)
        {
            _db.Delete<categoriaacabado>(x => x.IDAcabado == idCatAcab);
        }

        public void InsertarCategoriaAcabador(categoriaacabado categoriaacabado)
        {
            _db.Insert<categoriaacabado>();
        }

        public List<categoriaacabado> ListarCategoriaAcabado()
        {
            return _db.Select<categoriaacabado>();
        }
    }
}
