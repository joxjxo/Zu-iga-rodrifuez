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
    public class Mdatoscotizador : Idatoscotizador
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mdatoscotizador()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public List<datoscotizador> ListarDatosCotizador()
        {
            return _db.Select<datoscotizador>();
        }

        public datoscotizador BuscarDatosCotizador(int idDatoCoti)
        {
            return _db.Select<datoscotizador>(x => x.IDD == idDatoCoti).FirstOrDefault();
        }

        public void InsertarDatoCotizador(datoscotizador datoscotizador)
        {
            _db.Insert(datoscotizador);
        }

        public void ActualizarDatoCotizador(datoscotizador datoscotizador)
        {
            _db.Update(datoscotizador);
        }

        public void EliminarDatosCotizador(int idDatoCoti)
        {
            _db.Delete<datoscotizador>(x => x.IDD == idDatoCoti);
        }
    }
}
