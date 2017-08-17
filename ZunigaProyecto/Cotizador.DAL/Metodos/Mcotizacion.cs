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
    public class Mcotizacion : Icotizacion
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mcotizacion()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }
        public void ActualizarCotizacion(Cotizacion cotizacion)
        {
            _db.Update(cotizacion);
        }

        public Cotizacion BuscarCotizacion(int idDatoCoti)
        {
            return _db.Select<Cotizacion>(x => x.Id_cotizacion == idDatoCoti).FirstOrDefault();
        }

        public void EliminarCotizacion(int idDatoCoti)
        {
            _db.Delete<Cotizacion>(x => x.Id_cotizacion == idDatoCoti);
        }

        public void InsertarCotizacion(Cotizacion cotizacion)
        {
            _db.Insert(cotizacion);
        }

        public List<Cotizacion> ListarCotizacion()
        {
            return _db.Select<Cotizacion>();
        }
    }
}
