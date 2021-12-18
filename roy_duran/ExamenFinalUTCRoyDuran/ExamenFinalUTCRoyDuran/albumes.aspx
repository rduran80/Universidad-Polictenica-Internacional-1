<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="albumes.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.albumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
