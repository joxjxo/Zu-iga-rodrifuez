﻿using System;
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
    public class Mtrabajadoreslogeo : Itrabajadoreslogeo
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mtrabajadoreslogeo()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarTrabajadoresLogeo(trabajadoreslogeo trabajadoreslogeo)
        {
            _db.Update(trabajadoreslogeo);
        }

        public trabajadoreslogeo BuscarTrabajadoresLogeo(int idtl)
        {
            return _db.Select<trabajadoreslogeo>(x => x.IDTL == idtl).FirstOrDefault();
        }

        public void EliminarTrabajadoresLogeo(int idtl)
        {
            _db.Delete<trabajadoreslogeo>(x => x.IDTL == idtl);
        }

        public void InsertarTrabajadoresLogeo(trabajadoreslogeo trabajadoreslogeo)
        {
            _db.Insert<trabajadoreslogeo>();
        }

        public List<trabajadoreslogeo> ListarTrabajadoresLogeo()
        {
            return _db.Select<trabajadoreslogeo>();
        }
    }
}
