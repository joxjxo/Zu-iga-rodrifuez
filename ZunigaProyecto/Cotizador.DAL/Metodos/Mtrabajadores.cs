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
    public class Mtrabajadores : Itrabajadores
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;
        public Mtrabajadores()
        {
            _conexion = new OrmLiteConnectionFactory(BD.Default.conexion,
                 MySqlDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarTrabajadores(trabajadores trabajadores)
        {
            _db.Update(trabajadores);
        }

        public trabajadores BuscarTrabajadores(int idtrabaj)
        {
            return _db.Select<trabajadores>(x => x.IDT == idtrabaj).FirstOrDefault();
        }

        public trabajadores BuscarUsuarioLogin(int idtrabaj)
        {

            trabajadores empleado =
                 _db.Select<trabajadores>(x => x.IDT == idtrabaj).FirstOrDefault();
            //db.Select<DATOS.Usuarios>(x => x.Cedula.Contains(nick)).FirstOrDefault();

            return empleado;
        }

        public trabajadores UsuarioRol(int idtrabaj)
        {

            trabajadores empleado =
                 _db.Select<trabajadores>(x => x.IDT == idtrabaj).FirstOrDefault();
            //db.Select<DATOS.Usuarios>(x => x.Cedula.Contains(nick)).FirstOrDefault();

            return empleado;
        }
        public void EliminarTrabajadores(int idtrabaj)
        {
            _db.Delete<trabajadores>(x => x.IDT == idtrabaj);
        }

        public void InsertarTrabajadores(trabajadores trabajadores)
        {
            _db.Insert(trabajadores);
        }

        public List<trabajadores> ListarTrabajadores()
        {
            return _db.Select<trabajadores>();
        }
    }
}
