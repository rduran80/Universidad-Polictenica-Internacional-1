<%@ Page Title="" Language="C#" MasterPageFile="~/albumMaster.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="ExamenFinalUTCRoyDuran.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" Width="763px">
            </asp:GridView>
        </td>
    </tr>
</table>

</asp:Content>
