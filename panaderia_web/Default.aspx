<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="panaderia_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <head>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="Style/tablas.css">
    <script src="JavaScript.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1">
        <section class="first-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-content">
                            <h2>AGREGAR PRODUCTOS AL PEDIDO</h2>
                            <div class="line-dec"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="con_bg">
                <div class="row">
                    <div id="formulario">
                        <asp:TextBox ID="IdProducto" CssClass="contacto" placeholder="Id Producto" runat="server" />
                        <asp:TextBox ID="NombreProd" CssClass="contacto" placeholder="Nombre del Producto" runat="server" />
                        <asp:TextBox ID="Cantidad" CssClass="contacto" placeholder="Cantidad" runat="server" />
                        <asp:Button ID="agregarBtn2" runat="server" Text="AGREGAR PRODUCTO" OnClick="AgregarDatos2_Click" CssClass="addBtn" />
                    </div>
                    <table id="customers">
                        <tr>
                            <th>ID PRODUCTO</th>
                            <th>NOMBRE PRODUCTO</th>
                            <th>CANTIDAD</th>
                            <th>ACCION</th>
                        </tr>

                         <% foreach (var producto in GetProducto(ViewState["IdPedido"].ToString())) { %>
                        <tr>
                            <td><%= producto.IdProducto %></td>
                            <td><%= producto.NombreProd %></td>
                            <td><%= producto.Cantidad %></td>
                            <td class="actions">       
                                <a href="?" class="remove-item" title="Remove">Eliminar</a></td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
        </section>
        <footer>
        </footer>
    </form>
</body>
    </main>

</asp:Content>
