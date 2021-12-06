<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="BUENAVISTA.clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CLIENTES</title>
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
            <h1 class="auto-style2">CATALOGO DE CLIENTES</h1>
            <br />
&nbsp;</div>
            <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Cedula: "></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Telefono: "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Direccion: "></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server" Width="395px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Tipo: "></asp:Label>
            <asp:DropDownList ID="ddrTipo" runat="server">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Cliente</asp:ListItem>
                <asp:ListItem>Proveedor</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Height="35px" Width="83px" OnClick="btnAgregar_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Height="34px" Width="83px" OnClick="btnBorrar_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="34px" Text="Actualizar" Width="85px" OnClick="Button1_Click" />
            <br />
            <br />

        </div>
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlUsuario" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CEDULA" Height="164px" Width="515px">
                <Columns>
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" ReadOnly="True" SortExpression="CEDULA" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BUENAVISTAWEBConnectionString %>" DeleteCommand="DELETE FROM USUARIO WHERE CEDULA=@CEDULA" InsertCommand="INSERT INTO USUARIO values (@NOMBRE,@CEDULA,@TELEFONO,@DIRECCION,@TIPO)" SelectCommand="SELECT * FROM [USUARIO]" UpdateCommand="UPDATE USUARIO SET NOMBRE =@nombre,TELEFONO = @TELEFONO, DIRECCION =@DIRECCION  WHERE CEDULA=@cedula">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="txtCedula" Name="CEDULA" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNombre" Name="NOMBRE" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtCedula" Name="CEDULA" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtTelefono" Name="TELEFONO" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDireccion" Name="DIRECCION" PropertyName="Text" />
                    <asp:ControlParameter ControlID="ddrTipo" Name="TIPO" PropertyName="SelectedValue" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtTelefono" Name="TELEFONO" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDireccion" Name="DIRECCION" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtCedula" Name="cedula" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>

    </form>
 </body>
</html>
