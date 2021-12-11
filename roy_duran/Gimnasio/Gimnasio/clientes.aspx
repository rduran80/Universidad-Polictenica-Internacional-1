<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasMaestras/ManuMaster.Master" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="Gimnasio.clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 align="center">Mantenimiento de Clientes</h2>
    <table style="width: 1237px">

        <tr>
            <td style="width: 452px; text-align: center;">
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Cedula: " CssClass="lblcliente"></asp:Label>
&nbsp;&nbsp;<asp:TextBox ID="txtcedula" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Nombre: " CssClass="lblcliente"></asp:Label>
                <asp:TextBox ID="txtnombre" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Apellido: " CssClass="lblcliente"></asp:Label>
&nbsp;<asp:TextBox ID="txtape1" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Apellido: " CssClass="lblcliente"></asp:Label>
&nbsp;<asp:TextBox ID="txtape2" runat="server" Width="173px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Email: " CssClass="lblcliente"></asp:Label >
&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmail" runat="server" Width="173px"></asp:TextBox>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cedula" DataSourceID="SqlCliente" style="margin-left: 57px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Horizontal" CssClass="cssgridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido1" HeaderText="apellido1" SortExpression="apellido1" />
                        <asp:BoundField DataField="apellido2" HeaderText="apellido2" SortExpression="apellido2" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
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
                <br />
                <br />
                <asp:SqlDataSource ID="SqlCliente" runat="server" ConnectionString="<%$ ConnectionStrings:GIMNASIOConnectionString %>" SelectCommand="SELECT * FROM [Cliente]" InsertCommand="insert into cliente values (@cedula,@nombre,@apellido1,@apellido2,@email)  
" DeleteCommand="DELETE from cliente WHERE CEDULA = @CEDULA
" UpdateCommand="UPDATE cliente SET nombre = @nombre, apellido1 = @apellido1, apellido2 = @apellido2,email = @email WHERE cedula = @cedula ">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="txtcedula" Name="CEDULA" PropertyName="Text" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtcedula" Name="cedula" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtape1" Name="apellido1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtape2" Name="apellido2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtmail" Name="email" PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txtape1" Name="apellido1" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtape2" Name="apellido2" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtmail" Name="email" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtcedula" Name="cedula" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 452px">&nbsp;</td>
            <td style="width: 618px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
