using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace panaderia_web
{
    public class Pedidos
    {
        public int IdPedido { get; set; }
        public string NombreSu { get; set; }
        public DateTime Fecha { get; set; }
        public string Detalle { get; set; }
        public string Estado { get; set;}

    }
}