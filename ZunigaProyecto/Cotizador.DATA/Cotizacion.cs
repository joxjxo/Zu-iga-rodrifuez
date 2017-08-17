using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cotizador.DATA
{
    public class Cotizacion
    {
        public int Id_cotizacion { get; set; }

        public int Id_cliente { get; set; }
        public int IDD { get; set; }
        public double Total_Cotizacion { get; set; }
        public DateTime Fecha { get; set; }
        public string Localizacion { get; set; }

        public string Observaciones { get; set; }
    }
}
