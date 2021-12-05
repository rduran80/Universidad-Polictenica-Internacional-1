<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Calculadora_Web.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .body {
            background-image: url("4683b0e7.jpg");
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            height: 301px;
            background-color: #0066FF;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            color: #FF0000;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1"> 
        <tr>
            <td class="auto-style2" colspan="5"><span class="auto-style3"><strong>
                <br />
                INGRESO AL SISTEMA</strong></span><strong><br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="188px" ImageUrl="~/Account.contrast-black.ico" Width="205px" />
                <br />
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3" rowspan="2" class="auto-style4">
                <br />
                <asp:Label ID="Label1" runat="server" Text="USUAIO"></asp:Label>
                :&nbsp;
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="CLAVE"></asp:Label>
                :&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style5"></asp:Label>
                <br />
                <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INGRESAR" />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
