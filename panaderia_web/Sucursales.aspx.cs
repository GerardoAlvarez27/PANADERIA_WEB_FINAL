using panaderia_web;
using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Diagnostics;
using System.Web.UI.WebControls.WebParts;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace panaderia_web
{
    public partial class Sucursales : Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Sucursal> GetSucursales()
        {
            List<Sucursal> sucursalees = new List<Sucursal>();
            OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB");
            bdConex.Open();
            string query = "SELECT * FROM \"sucursal\"";
            using (OracleCommand command = new OracleCommand(query, bdConex))
            {
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Sucursal sucursal = new Sucursal
                        {
                            IdSucursal = Convert.ToInt32(reader["id_sucursal"]),
                            NombreSuc = reader["nombre_sucursal"].ToString(),
                            Direccion = reader["direccion"].ToString(),
                            Telefono = Convert.ToInt32(reader["telefono"]),
                        };

                        sucursalees.Add(sucursal);
                    }
                }
            }

            bdConex.Close();

            return sucursalees;
        }

        protected void AgregarDatos3_Click(object sender, EventArgs e)
        {
            // Obtén los datos de la página
            string NombreSuc = NombreSu.Text;
            string Direccion = direccion.Text;
            string Telefono = telefono.Text;
            using (OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB"))
            {
                try
                {
                    bdConex.Open();

                    // Define la consulta SQL para la inserción
                    string query = "INSERT INTO \"sucursal\" (\"id_sucursal\", \"nombre_sucursal\", \"direccion\", \"telefono\")  VALUES (sucursal_seq.NEXTVAL, :NombreSuc, :Direccion, :Telefono)";

                    using (OracleCommand command = new OracleCommand(query, bdConex))
                    {
                        // Asigna los valores de los parámetros
                        command.Parameters.Add(new OracleParameter("NombreSuc", NombreSuc));
                        command.Parameters.Add(new OracleParameter("Direccion", Direccion));
                        command.Parameters.Add(new OracleParameter("Telefono", Telefono));

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
