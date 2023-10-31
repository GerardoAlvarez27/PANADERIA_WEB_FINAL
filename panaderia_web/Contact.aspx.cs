using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Diagnostics;
using System.Web.UI.WebControls.WebParts;

namespace panaderia_web
{
    public partial class Contact : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Pedidos> GetPedidos()
        {
            List<Pedidos> pedidos = new List<Pedidos>();

#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
            OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB");
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos

            bdConex.Open();
            string query = "SELECT p.\"id_pedido\", s.\"nombre_sucursal\", p.\"fecha\", p.\"entrega\", p.\"estado\" FROM \"pedido\" p JOIN \"sucursal\" s ON p.\"id_sucursal\" = s.\"id_sucursal\"";
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
            using (OracleCommand command = new OracleCommand(query, bdConex))
            {
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Pedidos pedido = new Pedidos
                        {
                            IdPedido = Convert.ToInt32(reader["id_pedido"]),
                            NombreSu = reader["nombre_sucursal"].ToString(),
                            Fecha = Convert.ToDateTime(reader["fecha"]),
                            Detalle = reader["entrega"].ToString(),
                            Estado = reader["estado"].ToString()
                        };

                        pedidos.Add(pedido);
                    }
                }
            }
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
            bdConex.Close();

            return pedidos;
        }

        protected void AgregarDatos_Click(object sender, EventArgs e)
        {
            // Obtén los datos de la página
            string idSucursal = IdSucursal.Text;
            DateTime fecha = Convert.ToDateTime(Fecha.Text);
            string detalle = Detalle.Text;
            string estado = Estado.Text;
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
            using (OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB"))
            {
                try
                {
                    bdConex.Open();

                    // Define la consulta SQL para la inserción
                    string query = "INSERT INTO \"pedido\" (\"id_pedido\", \"id_sucursal\", \"fecha\", \"entrega\", \"estado\")  VALUES (pedido_seq.NEXTVAL, :idSucursal, :fecha, :detalle, :estado)";
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                    using (OracleCommand command = new OracleCommand(query, bdConex))
                    {
                        // Asigna los valores de los parámetros
                        command.Parameters.Add(new OracleParameter("idSucursal", idSucursal));
                        command.Parameters.Add(new OracleParameter("fecha", fecha));
                        command.Parameters.Add(new OracleParameter("detalle", detalle));
                        command.Parameters.Add(new OracleParameter("estado", estado));

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
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
                }
                catch (OracleException ex)
                {

                    Response.Write("Error al insertar datos en la base de datos: " + ex.Message);
                }
            }
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
        }

    }
}
