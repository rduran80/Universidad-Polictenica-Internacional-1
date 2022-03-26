<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Examen2RandallRojasSolano.Registro" %>

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
  width: 20%;
}
.botones{
    text-align: center;
}
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="titulos">
        </div>

        <div class="auto-style1">
            <div class="auto-style1">
                <strong>
             <asp:Label ID="Label1" runat="server">COD FACTURA: </asp:Label>
             <asp:Label ID="lfactura" runat="server"></asp:Label>
                <br />
              <br />
             <asp:Label ID="Label2" runat="server">CÓDIGO SERVICIO: </asp:Label>
            <asp:Label ID="lservicio" runat="server" Text="Label"></asp:Label>
                <br />
                </strong>
            </div>
            <div class="auto-style1">
                <strong style="text-align: center">
             <asp:Label ID="Label3" runat="server" Text="Label">MES: </asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Enero</asp:ListItem>
                <asp:ListItem>Febrero</asp:ListItem>
                <asp:ListItem>Marzo</asp:ListItem>
                <asp:ListItem>Abril</asp:ListItem>
                <asp:ListItem>Mayo</asp:ListItem>
                <asp:ListItem>Junio</asp:ListItem>
                <asp:ListItem>Julio</asp:ListItem>
                <asp:ListItem>Agosto</asp:ListItem>
                <asp:ListItem>Septiembre</asp:ListItem>
                <asp:ListItem>Octubre</asp:ListItem>
                <asp:ListItem>Noviembre</asp:ListItem>
                <asp:ListItem>Diciembre</asp:ListItem>
            </asp:DropDownList>
               <br /> 
               <br /> 
            <asp:Label ID="Label4" runat="server" Text="Label">MONTO: </asp:Label>
            <asp:TextBox ID="tmonto" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" style="text-align: center">DESCUENTO: </asp:Label>
            <asp:TextBox ID="tdescuento" runat="server"></asp:TextBox>
                </strong>
            </div>
            <div class="botones">
                <asp:Label ID="lerror" runat="server" style="color: #FF0000"></asp:Label>
            <br />
            <br />
            <asp:Button ID="bagregar" runat="server" OnClick="bagregar_Click" Text="Agregar" class="button2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bsalvar" runat="server" Text="Salvar" OnClick="bsalvar_Click" class="button2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bvolver" runat="server" Text="Volver" OnClick="bvolver_Click" class="button2" />
            </div>
        </div>
        <div class="botones">
        <br />
        <br />
        </div>
        <div class="botones">
            <asp:Label ID="Label6" runat="server" Text="Label" style="font-weight: 700">NOMBRE: </asp:Label>
            <asp:Label ID="lnombre" runat="server"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Label" style="font-weight: 700">CÉDULA: </asp:Label>
            <asp:Label ID="lcedula" runat="server"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Label" style="font-weight: 700">TELÉFONO: </asp:Label>
            <asp:Label ID="ltelefono" runat="server"></asp:Label>&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Label" style="font-weight: 700">DIRECCIÓN: </asp:Label>
            <asp:Label ID="ldirección" runat="server"></asp:Label>&nbsp;&nbsp;
        </div>
            

       
            <div class="botones">
            

       
            <br />
            <br />
        </div>
        <div class="botones">
            <strong>FACTURACIÓN:
        </strong>
        </div>
        <div class="botones">
        <br /> 

            </div>

            <div class="botones">
            <asp:Label ID="Label10" runat="server" Text="Label" style="font-weight: 700">MONTO: </asp:Label>
            <asp:Label ID="lmonto" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Text="Label" style="font-weight: 700">DESCUENTO: </asp:Label>
            <asp:Label ID="ldescuento" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Label" style="font-weight: 700">SUBTOTAL: </asp:Label>
            <asp:Label ID="lsubtotal" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="Label" style="font-weight: 700">IVA: </asp:Label>
            <asp:Label ID="liva" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="Label" style="font-weight: 700">TOTAL: </asp:Label>
            <asp:Label ID="ltotal" runat="server"></asp:Label>
            </div>
          
        <asp:SqlDataSource ID="sqldatos" runat="server" ConnectionString="<%$ ConnectionStrings:EXAMEN2RANDALLROJASConnectionString2 %>" InsertCommand="INSERT INTO CLIENTE values(@mes, @monto, @descuento, @subtotal, @iva, @total, @direccion)" ProviderName="<%$ ConnectionStrings:EXAMEN2RANDALLROJASConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [CLIENTE]">
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="mes" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="lmonto" Name="monto" PropertyName="Text" />
                <asp:ControlParameter ControlID="ldescuento" Name="descuento" PropertyName="Text" />
                <asp:ControlParameter ControlID="lsubtotal" Name="subtotal" PropertyName="Text" />
                <asp:ControlParameter ControlID="liva" Name="iva" PropertyName="Text" />
                <asp:ControlParameter ControlID="ltotal" Name="total" PropertyName="Text" />
                <asp:ControlParameter ControlID="ldirección" Name="direccion" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
