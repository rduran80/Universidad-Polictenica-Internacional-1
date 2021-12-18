<%@ Page Title="" Language="C#" MasterPageFile="~/catalogoMaster.Master" AutoEventWireup="true" CodeBehind="catalogo.aspx.cs" Inherits="CatalogoArtículos.catalogo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1621px;
            height: 160px;
        }
        .auto-style8 {
            height: 80px;
            width: 539px;
        }
        .auto-style9 {
            height: 80px;
            width: 540px;
        }
        .auto-style10 {
            margin-left: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="caja">
		<div class="header">Catalogo de productos</div>
		<div class="contenido">Sistema de cotrol y venta de productos</div>
		<div class="footer">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Codigo:  "></asp:Label>
            <asp:TextBox ID="Textcodigo" runat="server" Width="106px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Nombre:  "></asp:Label>
            <asp:TextBox ID="txtnombre" runat="server" Width="106px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Cantidad:  "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="45px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Precio:  "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="72px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion:  "></asp:Label>
            <asp:TextBox ID="txtdescripcion" runat="server" Width="600px"></asp:TextBox>
            <br />
            <br />
			<button class="primario">Ingresar</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="primario">Borrar</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="primario">Modificar</button>
            &nbsp;&nbsp;&nbsp;&nbsp;
			<button class="primario">Consultar</button>
		</div>
		<div class="caja">
		<div>
			
		    <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" class="footer" Width="956px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="codigo" DataSourceID="SqlProductos" ForeColor="#333333" GridLines="None" CssClass="auto-style10">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlProductos" runat="server" ConnectionString="<%$ ConnectionStrings:catalogoprodConnectionString %>" SelectCommand="SELECT * FROM [productos]" InsertCommand="insert into productos  values(@nombre, @descripcion, @precio, @cantidad) ">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtdescripcion" Name="descripcion" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtprecio" Name="precio" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtcant" Name="cantidad" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
			
		</div>

		</div>
	    </div>
</asp:Content>
