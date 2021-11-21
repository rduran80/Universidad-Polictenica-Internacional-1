<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactenos.aspx.cs" Inherits="Calculadora_Web.contactenos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            Para:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPara" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;<br />

            Mensaje:
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMensaje" runat="server" Height="150px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="662px"></asp:TextBox>
            <br />


        </div>
        <p>
            <asp:Button ID="btnEnviar" runat="server" Height="50px" OnClick="Button1_Click" Text="ENVIAR" Width="134px" />
        </p>
    </form>
    <p>
&nbsp;&nbsp;
    </p>
</body>
</html>
