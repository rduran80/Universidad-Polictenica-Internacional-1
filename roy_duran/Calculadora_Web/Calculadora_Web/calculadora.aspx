<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="Calculadora_Web.claculadora" %>

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
            background-color: #0066FF;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            height: 40px;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style3 {
            text-align: center;
            height: 23px;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style6 {
            background-color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>CALCULADORA WEB</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style4"></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </div>
        <div>
        <br />
        Numero1:
        <asp:TextBox ID="txtNum1" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        <br />
        Numero2:
        <asp:TextBox ID="txtNum2" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        <br />
        Resultado: <asp:Label ID="lblResultado" runat="server"></asp:Label> 
        <br />
            <br />
            <a href="mailto:hotmarduran80@hotmailcomjonsCrono">hotmarduran80@hotmailcomjonsCrono</a>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="operaciones" Text="Sumar" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="operaciones" Text="Restar" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnInicio" runat="server" Height="32px" OnClick="btnInicio_Click" Text="INICIO" Width="108px" CssClass="auto-style6" />
        <asp:Button ID="btnContactenos" runat="server" CssClass="auto-style6" Height="32px" OnClick="btnContactenos_Click" Text="CONTACTENOS" Width="120px" />
        <br />
        </div>

    </form>
</body>
</html>
