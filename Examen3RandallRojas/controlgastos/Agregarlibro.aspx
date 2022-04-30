<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregarlibro.aspx.cs" Inherits="controlgastos.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/css/Principal.css" rel="stylesheet" />
    <div class="principal-calendars-container" style="margin-bottom: 10px;">
        <asp:Label ID="Label1" runat="server" Text="Tipo: " class="todos-label"></asp:Label>
        <asp:DropDownList ID="dtipo" runat="server" class="dropdown-todos">
            <asp:ListItem>Ingreso</asp:ListItem>
            <asp:ListItem>Gasto</asp:ListItem>
         </asp:DropDownList>
    </div>
    <div class="principal-calendars-container" style="margin-bottom: 10px;">
        <asp:Label ID="Label2" runat="server" Text="Descripción: " class="todos-label"></asp:Label>
        <asp:TextBox ID="tdescripcion" runat="server" Width="300px" class="principal-input"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Monto: " class="todos-label"></asp:Label>
        <asp:TextBox ID="tmonto" runat="server" class="principal-input"></asp:TextBox>
    </div>
    <div class="principal-calendars-container" style="margin-bottom: 7px;">      
    <asp:Calendar ID="cal1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar> 
    </div>
    <div class="principal-calendars-container" style="margin-bottom: 10px;">
        <asp:Button ID="bagregar" runat="server" Text="Agregar" BackColor="#ff9933" OnClick="bagregar_Click" class="todos-botones"/>
    </div>
    <div class="principal-calendars-container">
    <asp:Label ID="lblerror" runat="server" style="color: #FF0000;margin-bottom: 10px;" Text="" class="todos-label"></asp:Label>
    </div>    
    <div class="principal-calendars-container">
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </div>            
         
                    
</asp:Content>
