using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
#pragma warning disable CS0105 // La directiva using apareció anteriormente en este espacio de nombre
using System.Data.OracleClient;
#pragma warning restore CS0105 // La directiva using apareció anteriormente en este espacio de nombre
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace panaderia_web
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["idPedido"]))
                {
                    string idPedido = Request.QueryString["idPedido"];
                    ViewState["IdPedido"] = idPedido;
                }
            }
        }
        public List<Producto> GetProducto(string idPedido)
        {
       
            List<Producto> productos = new List<Producto>();
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
            OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB");
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
            {
                bdConex.Open();
                string query = "SELECT p.\"id_producto\", pr.\"nombre_producto\",  p.\"cantidad\" FROM \"pedido_producto\" p JOIN \"Producto\" pr ON p.\"id_producto\" = pr.\"id_producto\" WHERE p.\"id_pedido\" = :idPedido";

#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                using (OracleCommand command = new OracleCommand(query, bdConex))
                {
                    command.Parameters.Add(new OracleParameter("idPedido", idPedido));
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Producto producto = new Producto
                            {
                                IdProducto = Convert.ToInt32(reader["id_producto"]),
                                NombreProd = reader["nombre_producto"].ToString(),
                                Cantidad = Convert.ToInt32(reader["cantidad"]),
                            };

                            productos.Add(producto);
                        }
                    }
                }
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
            }
            bdConex.Close();

            return productos;
        }


        protected void AgregarDatos2_Click(object sender, EventArgs e)
        {
            if (ViewState["IdPedido"] != null)
            {
                string idPedido = ViewState["IdPedido"].ToString();
                string idProducto = IdProducto.Text;
                string cantidad = Cantidad.Text;

#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                using (OracleConnection bdConex = new OracleConnection("DATA SOURCE = xe; PASSWORD = 1234; USER ID = FINALWEB"))
                {
                    try
                    {
                        bdConex.Open();

                        // Define la consulta SQL para la inserción
                        string query = "INSERT INTO \"pedido_producto\" (\"id_pedido\",\"id_producto\", \"cantidad\")  VALUES (:idPedido, :idProducto, :cantidad)";

                        // Crea un comando con la consulta y la conexión
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
                        using (OracleCommand command = new OracleCommand(query, bdConex))
                        {
                            // Asigna los valores de los parámetros
                            command.Parameters.Add(new OracleParameter("idPedido", idPedido));
                            command.Parameters.Add(new OracleParameter("idProducto", idProducto));
                            command.Parameters.Add(new OracleParameter("cantidad", cantidad));

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
            else
            {
                Response.Write("IdPedido no válido.");
            }
        }
    }
}