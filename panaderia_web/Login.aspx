<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="panaderia_web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<style>
    #login-box {
        width: 30%;
        text-align: center;
        margin: 0 auto;
        margin-top: 13%;
        background: #000000d3;
        padding: 20px 50px;
    }

    #login-box h1 {
        color: white;
    }
    /*caja del formulario*/
    #login-box .form .item input {
        width: 200px;
        border: 0;
        border-bottom: 1px solid white;
        font-size: 18px;
        background: #ffffff00;
        color: white;
        padding: 15px 10px;
    }
    /*imagen de fondo*/
    body {
        background: url("https://www.zarla.com/images/Zarla-bakery-logos-4568x3401-20210126.jpeg?crop=21:16,smart&width=420&dpr=2") center;
        background-size: 100% auto;
        background-repeat: no-repeat;
    }
    /*boton*/
    #btnLogin {
        border: 0;
        width: 150px;
        height: 50px;
        margin-top: 35px;
        font-size: 18px;
        color:black;
        border-radius: 25px;
        background-color: rgb(136, 136, 136);

    }
</style>

<form runat="server">
    <div id="login-box">
        <h1>PANADERIA</h1>
        <div class="form">
            <div class="item"> <!-- parte de nombre de usuario -->
                <input type="text" placeholder="Usuario"> <!-- Entrada de nombre de usuario realizada por cuadro de texto -->
            </div>

            <div class="item"> <!-- parte de la contraseña -->
                <input type="password" placeholder="Contraseña"> <!-- Entrada de contraseña usando el cuadro de texto de contraseña-->
            </div>
        </div>
        <asp:Button ID="btnLogin" runat="server" Text="Ingresar" OnClick="btnLogin_Click1"/>
    </div>
</form>
</body>
</html>