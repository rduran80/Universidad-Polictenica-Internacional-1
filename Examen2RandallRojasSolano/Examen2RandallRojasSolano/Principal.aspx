<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Examen2RandallRojasSolano.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.button2 {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
#belectricidad{
   background-color: yellow;
   color: black;
}
#bagua{
   background-color: deepskyblue;
   color: black;
}
#bcable{
   background-color: darkslategrey;
   color: black;
}
#btelefono{
   background-color: green;
   color: black;
}

button:hover {
  opacity: 0.8;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}


</style>
</head>
<body>
    <form id="form1" runat="server">
            <h2>Login Form</h2>
  <div class="imgcontainer">
    &nbsp;<asp:Image ID="Image1" runat="server" Height="351px" Width="412px" ImageUrl="~/imagenes/servicios-publicos-incluidos-en-el-precio.png" />
  </div>

  <div class="container">
    <label for="uname"><b>Nombre</b></label>
      <asp:TextBox ID="tnombre" placeholder="Ingrese Nombre" runat="server" required class="auto-style1"></asp:TextBox>
    <label for="psw"><b>Cédula</b></label>
      <asp:TextBox ID="tcedula" placeholder="Ingrese Cédula" runat="server" required class="auto-style1"></asp:TextBox> 
      <label for="psw"><b>Teléfono</b></label>
      <asp:TextBox ID="ttelefono" placeholder="Ingrese Teléfono" runat="server" required class="auto-style1"></asp:TextBox>
      <label for="psw"><b>Dirección</b></label>
      <asp:TextBox ID="tdireccion" placeholder="Ingrese Dirección" runat="server" required class="auto-style1"></asp:TextBox>
      <div>
          <asp:Button ID="belectricidad" runat="server" Text="Electricidad" class="button2" OnClick="belectricidad_Click" />
      <asp:Button ID="bagua" runat="server" Text="Agua" class="button2" OnClick="bagua_Click" />
      <asp:Button ID="bcable" runat="server" Text="Cable" class="button2" OnClick="bcable_Click" />
      <asp:Button ID="btelefono" runat="server" Text="Teléfono" class="button2" OnClick="btelefono_Click" />
      </div>
    
       </div>
    </form>

</body>
</html>
