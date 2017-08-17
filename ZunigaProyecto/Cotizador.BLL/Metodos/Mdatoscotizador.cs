﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{
    public class Mdatoscotizador : Idatoscotizador
    {
        DAL.Interfaces.Idatoscotizador dc;

        public Mdatoscotizador()
        {
            dc = new DAL.Metodos.Mdatoscotizador();
        }

        public void ActualizarDatoCotizador(datoscotizador datoscotizador)
        {
            dc.ActualizarDatoCotizador(datoscotizador);
        }

        public datoscotizador BuscarDatosCotizador(int idDatoCoti)
        {
            return dc.BuscarDatosCotizador(idDatoCoti);
        }

        public void EliminarDatosCotizador(int idDatoCoti)
        {
            dc.EliminarDatosCotizador(idDatoCoti);
        }

        public void InsertarDatoCotizador(datoscotizador datoscotizador)
        {
            dc.InsertarDatoCotizador(datoscotizador);
        }

        public List<datoscotizador> ListarDatosCotizador()
        {
            return dc.ListarDatosCotizador();
        }
    }
}
