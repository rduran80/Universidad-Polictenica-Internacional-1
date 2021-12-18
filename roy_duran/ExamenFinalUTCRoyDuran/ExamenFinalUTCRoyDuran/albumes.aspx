<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="albumes.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.albumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 990px;
        }
        .auto-style2 {
            width: 217px;
        }
        .auto-style3 {
            width: 479px;
        }
        .auto-style4 {
            width: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nombre Album"></asp:Label>
        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Productor"></asp:Label>
        <asp:TextBox ID="txtproductor" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Cantante"></asp:Label>
        <asp:TextBox ID="txtcantante" runat="server"></asp:TextBox><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Fecha de creacion"></asp:Label>
        <asp:TextBox ID="txtfechacre" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Precio"></asp:Label>
        <asp:TextBox ID="txtprecio" runat="server"></asp:TextBox>
    </div>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlAlbum" Width="906px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="productor" HeaderText="productor" SortExpression="productor" />
            <asp:BoundField DataField="cantante" HeaderText="cantante" SortExpression="cantante" />
            <asp:BoundField DataField="feechacreacion" HeaderText="feechacreacion" SortExpression="feechacreacion" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlAlbum" runat="server" ConnectionString="<%$ ConnectionStrings:BDAlbumConnectionString2 %>" SelectCommand="SELECT * FROM [Album]" InsertCommand="exec SP_insertAlbum @nombre,@productor,@cantante,@feechacreacion,@precio">
    <InsertParameters>
        <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" />
        <asp:ControlParameter ControlID="txtproductor" Name="productor" PropertyName="Text" />
        <asp:ControlParameter ControlID="txtcantante" Name="cantante" PropertyName="Text" />
        <asp:ControlParameter ControlID="txtfechacre" Name="feechacreacion" PropertyName="Text" />
        <asp:ControlParameter ControlID="txtprecio" Name="precio" PropertyName="Text" />
    </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
    <asp:Button CssClass="primario" ID="Button1" runat="server" Text="Ingresar Album" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="primario" ID="Button2" runat="server" Text="Consultar Album" Width="154px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="primario" ID="Button3" runat="server" Text="Bitacora" Width="141px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    <br />
    </asp:Content>
