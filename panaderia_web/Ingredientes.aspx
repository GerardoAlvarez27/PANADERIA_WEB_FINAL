<%@ Page Title="Ingredientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="panaderia_web.Ingredientes" %>
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
                            <h2>NUEVO INGREDIENTE</h2>
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
                        <asp:TextBox ID="nombreIngre" CssClass="contacto" placeholder="Nombre del Ingrediente" runat="server" />
                        <asp:TextBox ID="precio" CssClass="contacto" placeholder="Precio" runat="server" />
                        <asp:TextBox ID="disponibilidad" CssClass="contacto" placeholder="Disponibilidad" runat="server" /> 
                        <asp:TextBox ID="medida" CssClass="contacto" placeholder="Medida" runat="server" /> 
                        <asp:Button ID="agregarBtn4" runat="server" Text="AGREGAR SUCURSAL" OnClick="AgregarDatos4_Click" CssClass="addBtn" />
                    </div>
                    <table id="customers">
                        <tr>
                            <th>ID INGREDIENTE</th>
                            <th>NOMBRE INGREDIENTE</th>
                            <th>PRECIO</th>
                            <th>DISPONIBILIDAD</th>
                            <th>MEDIDA</th>
                            <th>OPERACION</th>
                        </tr>

                                <% foreach (var ingrediente in GetIngrediente())
                                { %>
                            <tr>
                                <td><%= ingrediente.IdIngrediente %></td>
                                <td><%= ingrediente.NombreIngre %></td>
                                <td><%= ingrediente.Precio %></td>
                                <td><%= ingrediente.Disponibilidad %></td>
                                <td><%= ingrediente.Medida %></td>
                                <td class="actions">
                                    <a href="?" class="edit-item" title="Edit">Ver Receta</a>
                                 
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
