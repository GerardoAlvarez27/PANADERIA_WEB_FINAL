using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panaderia_web
{
    public partial class Ingredientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public List<Ingrediente> GetIngrediente()
        {
            List<Ingrediente> ingredientees = new List<Ingrediente>();
            OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB");

            bdConex.Open();
            string query = "SELECT * FROM \"Ingredientes\"";

            using (OracleCommand command = new OracleCommand(query, bdConex))
            {
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Ingrediente ingrediente = new Ingrediente
                        {
                            IdIngrediente = Convert.ToInt32(reader["id_ingrediente"]),
                            NombreIngre = reader["nombre_ingre"].ToString(),
                            Precio = Convert.ToInt32(reader["precio"]),
                            Disponibilidad = Convert.ToInt32(reader["disponibilidad"]),
                            Medida = reader["medida"].ToString(),
                        };

                        ingredientees.Add(ingrediente);
                    }
                }
            }

            bdConex.Close();

            return ingredientees;
        }

        protected void AgregarDatos4_Click(object sender, EventArgs e)
        {
            // Obtén los datos de la página
            string NombreIngrediente = nombreIngre.Text;
            string Precio = precio.Text;
            string Disponibilidad = disponibilidad.Text;
            string Medida = medida.Text;
            using (OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB"))
            {
                try
                {
                    bdConex.Open();

                    // Define la consulta SQL para la inserción
                    string query = "INSERT INTO \"Ingredientes\" (\"id_ingrediente\", \"nombre_ingre\", \"precio\", \"disponibilidad\", \"medida\")  VALUES (ingrediente_seq.NEXTVAL, :NombreIngrediente, :Precio, :Disponibilidad, :Medida)";
                    using (OracleCommand command = new OracleCommand(query, bdConex))
                    {
                        // Asigna los valores de los parámetros
                        command.Parameters.Add(new OracleParameter("NombreIngrediente", NombreIngrediente));
                        command.Parameters.Add(new OracleParameter("Precio", Precio));
                        command.Parameters.Add(new OracleParameter("Disponibilidad", Disponibilidad));
                        command.Parameters.Add(new OracleParameter("Medida", Medida));

                        // Ejecuta la consulta de inserción
                        int filasInsertadas = command.ExecuteNonQuery();

                        if (filasInsertadas > 0)
                        {
                            Response.Write("Datos agregados con éxito.");
                        }
                        else
                        {
                            Response.Write("No se insertaron datos.");
                        }
                    }
                }
                catch (OracleException ex)
                {

                    Response.Write("Error al insertar datos en la base de datos: " + ex.Message);
                }
            }
        }
    }
}