﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;

namespace Cotizador.BLL.Metodos
{
    public class Mproyecto : Iproyectos
    {
        DAL.Interfaces.Iproyectos proy;

        public Mproyecto()
        {
            proy = new DAL.Metodos.Mproyectos();
        }

        public void ActualizarProyecto(proyectos proyectos)
        {
            proy.Actualizarproyectos(proyectos);
        }

        public proyectos BuscarProyectos(int idProyecto)
        {
            return proy.Buscarproyectos(idProyecto);
        }

        public void EliminarProyecto(int idProyecto)
        {
            proy.Eliminarproyectos(idProyecto);
        }

        public void InsertarProyecto(proyectos proyectos)
        {
            proy.Insertarproyectos(proyectos);
        }

        public List<proyectos> ListarProyectos()
        {
            return proy.Listarproyectos();
        }
    }
}
