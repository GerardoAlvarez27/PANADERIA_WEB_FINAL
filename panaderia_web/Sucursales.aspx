<%@ Page Title="Sucursales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sucursales.aspx.cs" Inherits="panaderia_web.Sucursales" %>
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
                            <h2>NUEVA SUCURSAL</h2>
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
                        <asp:TextBox ID="NombreSu" CssClass="contacto" placeholder="Nombre de la Sucursal" runat="server" />
                        <asp:TextBox ID="direccion" CssClass="contacto" placeholder="Direccion Sucursal" runat="server" />
                        <asp:TextBox ID="telefono" CssClass="contacto" placeholder="Telefono" runat="server" />
                        <asp:Button ID="agregarBtn3" runat="server" Text="AGREGAR SUCURSAL" OnClick="AgregarDatos3_Click" CssClass="addBtn" />
                    </div>
                    <table id="customers">
                        <tr>
                            <th>ID SUCURSAL</th>
                            <th>NOMBRE SUCURSAL</th>
                            <th>DIRECCION</th>
                            <th>TELEFONO</th>
                            <th>OPERACION</th>

                        </tr>

                                <% foreach (var sucursal in GetSucursales())
                                { %>
                            <tr>
                                <td><%= sucursal.IdSucursal %></td>
                                <td><%= sucursal.NombreSuc %></td>
                                <td><%= sucursal.Direccion %></td>
                                <td><%= sucursal.Telefono %></td>
                                <td class="actions">
                                    <a href="?" class="edit-item" title="Edit">Editar</a>
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
