<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="BUENAVISTA.factura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FACTURACION</title>
    <style>
        body{
            background-color: bisque;

        }
        ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li{
            float:left;
        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover:not(.active){
            background-color:cornflowerblue;
        }
        .active {
            background-color:#4cff00;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="inicio.aspx"> INICIO</a></li>
                <li><a href="clientes.aspx"> CLIENTES</a></li>
                <li><a href="factura.aspx"> FACTURAS</a></li>
            </ul>
        </div>
        <div class="auto-style1">
            <br />
            <br />
            <h1 class="auto-style2">FACTURACION</h1>
            <br />
        </div>
    </form>
</body>
</html>
