<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="panaderia_web.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                                <h2>PEDIDOS</h2>
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
                            <asp:TextBox ID="IdSucursal" CssClass="contacto" placeholder="Numero Sucursal" runat="server" />
                            <asp:TextBox ID="Fecha" CssClass="contacto" placeholder="Fecha Entrega" runat="server" type="date" />
                            <asp:TextBox ID="Detalle" CssClass="contacto" placeholder="Detalles" runat="server" />
                            <asp:TextBox ID="Estado" CssClass="contacto" placeholder="Estado" runat="server" />
                            <asp:Button ID="agregarBtn" runat="server" Text="AGREGAR" OnClick="AgregarDatos_Click" CssClass="addBtn" />
                        </div>
                        <table id="customers">
                            <tr>
                                <th>ID PEDIDO</th>
                                <th>NOMBRE SUCURSAL</th>
                                <th>FECHA ENTREGA</th>
                                <th>DETALLE</th>
                                <th>ESTADO</th>
                                <th>ACCION</th>
                            </tr>

                            <% foreach (var pedido in GetPedidos())
                                { %>
                            <tr>
                                <td><%= pedido.IdPedido %></td>
                                <td><%= pedido.NombreSu %></td>
                                <td><%= pedido.Fecha %></td>
                                <td><%= pedido.Detalle %></td>
                                <td><%= pedido.Estado %></td>
                                <td class="actions">
                                    <a href="Default.aspx?idPedido=<%= pedido.IdPedido %>" class="edit-item" title="Edit">Agregar</a>
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
</asp:Content>
