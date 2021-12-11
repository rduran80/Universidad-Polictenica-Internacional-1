<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/ManuMaster.Master" AutoEventWireup="true" CodeBehind="incio.aspx.cs" Inherits="Gimnasio.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 1237px">
    <tr>
        <td style="width: 411px">&nbsp;</td>
        <td style="width: 412px">
            <img alt="" src="imagenes/login.png" style="width: 271px; height: 255px" /></td>
        <td style="width: 412px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 411px">&nbsp;</td>
        <td style="width: 412px; text-align: center">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            &nbsp;<asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Clave"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtclave" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblingresoerror" runat="server" ForeColor="#FF3300"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btningresar" runat="server" Text="Ingresar" class="btn1" OnClick="btningresar_Click"/>
        </td>
        <td style="width: 412px">&nbsp;</td>
    </tr>
</table>

</asp:Content>
