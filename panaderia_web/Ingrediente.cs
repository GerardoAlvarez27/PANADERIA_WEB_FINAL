using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace panaderia_web
{
    public class Ingrediente
    {
        public int IdIngrediente { get; set; }
        public string NombreIngre { get; set; }
        public int Precio { get; set; }
        public int Disponibilidad { get; set; }
        public string Medida { get; set; }

    }
}