<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="controlgastos.Login3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
    <link href="/css/Reg&Login.css" rel="stylesheet" />

    <title></title>
</head>
<body>
   <div class="login">
	<h1>Login</h1>
    <form method="post" runat="server">
    	<asp:TextBox ID="usuarioLog" runat="server" class="input" placeholder="Nombre de Usuario"></asp:TextBox>
        <asp:TextBox ID="contraseñaLog" runat="server" class="input" placeholder="Contraseña" style="margin-bottom: 5px;" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblerror" runat="server" style="color: #FF0000"></asp:Label>
        <asp:Button ID="logbtn" runat="server" Text="Ingresar" class="btn btn-primary btn-block btn-large" OnClick="logbtn_Click" />
        <br />
        <asp:Button ID="regbtn" runat="server" Text="Registrarse" class="btn btn-primary btn-block btn-large" OnClick="regbtn_Click" />
    </form>
</div>
</body>
</html>
