<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="canciones.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.canciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 959px;
        }
        .auto-style2 {
            width: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre Album:  "></asp:Label>
        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlCancion" Width="800px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="id_album" HeaderText="id_album" SortExpression="id_album" />
                <asp:BoundField DataField="nombreCancion" HeaderText="nombreCancion" SortExpression="nombreCancion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlCancion" runat="server" ConnectionString="<%$ ConnectionStrings:BDAlbumConnectionString3 %>" SelectCommand="SELECT * FROM [canciones]"></asp:SqlDataSource>
        <br />

            <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
    <asp:Button CssClass="primario" ID="Button1" runat="server" Text="Ingresar Cancion" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="primario" ID="Button2" runat="server" Text="Consultar Cancion" Width="154px" />

            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>
