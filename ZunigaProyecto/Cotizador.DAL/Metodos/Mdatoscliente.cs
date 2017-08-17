﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.DAL.Interfaces;
using System.Data;
using ServiceStack.OrmLite;

namespace Cotizador.DAL.Metodos
{
    public class Mdatoscliente : Idatoscliente
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mdatoscliente()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarDatosCliente(datoscliente datoscliente)
        {
            _db.Update<datoscliente>();
        }

        public datoscliente BuscarDatosCliente(int idDatosClien)
        {
            return _db.Select<datoscliente>(x => x.IDC == idDatosClien).FirstOrDefault();
        }

        public void EliminarDatosCliente(int idDatosClien)
        {
            _db.Delete<datoscliente>(x => x.IDC == idDatosClien);
        }

        public void InsertarDatosClienter(datoscliente datoscliente)
        {
            _db.Insert<datoscliente>();
        }

        public List<datoscliente> ListarDatosCliente()
        {
            return _db.Select<datoscliente>();
        }
    }
}
