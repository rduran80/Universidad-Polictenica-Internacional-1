<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="canciones.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.canciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            left: -9px;
            top: 17px;
            width: 968px;
        }
        .auto-style4 {
            height: 48px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
        <div class="auto-style5">
            <br />
        <asp:Label ID="Label1" runat="server" Text="ID Album:  "></asp:Label>
        <asp:TextBox ID="txtidalbum" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Nombre cancion:  "></asp:Label>
        <asp:TextBox ID="txtnombrecancion" runat="server"></asp:TextBox>
        <br />
        <br />
        </div>
        <table class="auto-style3">
        <tr>
            <td class="auto-style4">
            <br />
            <asp:Button CssClass="primario" ID="Button1" runat="server" Text="Ingresar Cancion" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="primario" ID="Button2" runat="server" Text="Consultar Cancion" Width="154px" OnClick="Button2_Click" />
            <br />
            <br />
            </td>
        </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlCancion" Width="800px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="id_album" HeaderText="id_album" SortExpression="id_album" />
                <asp:BoundField DataField="nombreCancion" HeaderText="nombreCancion" SortExpression="nombreCancion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlCancion" runat="server" ConnectionString="<%$ ConnectionStrings:BDAlbumConnectionString4 %>" SelectCommand="SELECT * FROM [canciones]" InsertCommand="exec SP_insertcancion @id_album,@nombreCancion">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtidalbum" Name="id_album" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtnombrecancion" Name="nombreCancion" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />

    </div>

</asp:Content>
 