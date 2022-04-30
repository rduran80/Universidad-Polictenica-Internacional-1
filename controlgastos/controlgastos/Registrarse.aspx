<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="controlgastos.Registrarse_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/css/Reg&Login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="login">
	<h1>Registrarse</h1>
    <form method="post" runat="server">
        <asp:TextBox ID="usuarioReg" runat="server" class="input" placeholder="Nombre de Usuario"></asp:TextBox>
        <asp:TextBox ID="contraseñaReg" runat="server" class="input" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="contraseñaRegCon" runat="server" class="input" placeholder="Confirmar Contraseña" style="margin-bottom: 5px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblerror" runat="server" Text="" style="color: #FF0000"></asp:Label>
        <asp:Button ID="registbtn" runat="server" Text="Registrarse" class="btn btn-primary btn-block btn-large" OnClick="registbtn_Click" />
        <br />
    </form>
</div>
</body>
</html>
