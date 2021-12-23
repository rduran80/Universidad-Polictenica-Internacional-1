<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/ManuMaster.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Gimnasio.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <h2 align="center">Mantenimiento de Usuarios</h2>
    <table style="width: 1237px">

        <tr>
            <td style="width: 452px; text-align: center;">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Cedula: " CssClass="lblcliente"></asp:Label>
&nbsp;&nbsp;<asp:TextBox ID="txtcedula" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Usuario" CssClass="lblcliente"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtusuario" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Clave" CssClass="lblcliente"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtclave" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <asp:Button ID="btningresar" runat="server" Text="Agregar" CssClass="btn1" Width="95px" OnClick="Button1_Click" />
                &nbsp;&nbsp;<asp:Button ID="btnborrar" runat="server" Text="Borrar" CssClass="btn1" Width="98px" OnClick="Button2_Click"/>
&nbsp;&nbsp;<asp:Button ID="btnactualizar" runat="server" Text="Actualizar" CssClass="btn1" Width="103px" OnClick="btnactualizar_Click"/>
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
            <td style="width: 618px">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlUsuario" Height="152px" Width="691px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:GIMNASIOConnectionString %>" DeleteCommand="DELETE FROM USUARIO WHERE CEDULA=@CEDULA" InsertCommand="insert into usuario values (@cedula,@usuario,@clave)" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE USUARIO SET usuario = @usuario, clave = @clave  where cedula = @cedula">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="txtcedula" Name="CEDULA" PropertyName="Text" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtcedula" Name="cedula" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtusuario" Name="usuario" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtclave" Name="clave" PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtusuario" Name="usuario" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtclave" Name="clave" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtcedula" Name="cedula" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 452px">&nbsp;</td>
            <td style="width: 618px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
