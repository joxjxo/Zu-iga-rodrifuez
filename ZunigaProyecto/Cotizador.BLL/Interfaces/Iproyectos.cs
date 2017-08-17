﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cotizador.DATA;

namespace Cotizador.BLL.Interfaces
{
    public interface Iproyectos
    {
        List<proyectos> ListarProyectos();
        proyectos BuscarProyectos(int idProyecto);
        void InsertarProyecto(proyectos proyectos);
        void ActualizarProyecto(proyectos proyectos);
        void EliminarProyecto(int idProyecto);
    }
}
