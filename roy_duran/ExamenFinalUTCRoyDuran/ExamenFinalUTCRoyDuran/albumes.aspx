<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="albumes.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.albumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 90px;
    }
    .auto-style3 {
        height: 98px;
    }
    .auto-style4 {
        height: 225px;
    }
    .auto-style5 {
        height: 141px;
        margin-top: 53px;
    }
    .auto-style6 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
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
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="primario" ID="Button1" runat="server" Text="Ingresar Album" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="primario" ID="Button2" runat="server" Text="Consultar Album" Width="154px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="primario" ID="Button3" runat="server" Text="Bitacora" Width="141px" />
            <br />
    </div>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlAlbum" Width="906px" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" CssClass="auto-style6">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="productor" HeaderText="productor" SortExpression="productor" />
            <asp:BoundField DataField="cantante" HeaderText="cantante" SortExpression="cantante" />
            <asp:BoundField DataField="feechacreacion" HeaderText="feechacreacion" SortExpression="feechacreacion" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
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
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    <br />
    </asp:Content>
