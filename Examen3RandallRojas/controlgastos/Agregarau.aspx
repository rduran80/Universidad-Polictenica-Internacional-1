<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregarau.aspx.cs" Inherits="controlgastos.Agregar" %><asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/css/Principal.css" rel="stylesheet" />
    <div class="principal-calendars-container">
        
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre" class="todos-label"></asp:Label>
        <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Cédula: " class="todos-label"></asp:Label>
        <asp:TextBox ID="cedula" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Nacionalidad" class="todos-label"></asp:Label>
        <asp:TextBox ID="nacionalidad" runat="server"></asp:TextBox>
    </div>
        <div>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" class="todos-botones" />
        </div>
    </div>
</asp:Content>
