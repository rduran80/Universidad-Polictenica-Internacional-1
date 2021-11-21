<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="Examen2RoyDuran.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background-image:url("fondo.jpg")
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            background-color: #0066FF;
        }
        .auto-style4 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            height: 45px;
            text-align: left;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style17 {
            color: #FFFFFF;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style18 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style19 {
            color: #000000;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                    <tr>
                        <td class="auto-style3" colspan="3"><span class="auto-style4"><strong>Sistema de facturacion</strong></span><strong><br class="auto-style4" />
                            </strong>
                            <span class="auto-style8"><strong>servicios publicos</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style12">Fecha:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblFecha" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                </table>
            <section class="auto-style9">

                <div class="auto-style10">
                    <span class="auto-style16"><strong>Seccion 1:</strong></span><strong><br class="auto-style16" />
                <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>Mes al cobro :&nbsp;&nbsp; </strong></span><strong>
                <asp:DropDownList ID="drdMes" runat="server" Height="29px" Width="229px" CssClass="auto-style15">
                    <asp:ListItem>Enero</asp:ListItem>
                    <asp:ListItem>Febrero</asp:ListItem>
                    <asp:ListItem>Marzo</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Mayo</asp:ListItem>
                    <asp:ListItem>Junio</asp:ListItem>
                    <asp:ListItem>Julio</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Setiembre</asp:ListItem>
                    <asp:ListItem>Octubre</asp:ListItem>
                    <asp:ListItem>Noviembre</asp:ListItem>
                    <asp:ListItem>Diciembre</asp:ListItem>
                </asp:DropDownList>
                    <span class="auto-style19">&nbsp;&nbsp;&nbsp;</span><span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp; Tipo de servicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Monto a pagar : </span>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style15"></asp:TextBox>
                <br class="auto-style16" />
                <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>Descuento :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong> <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style15"></asp:TextBox>
                    </strong><span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sub Total :&nbsp;&nbsp; </strong></span><strong>
                <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong> <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>IVA :&nbsp;&nbsp; </strong></span><strong>
                <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong> <br class="auto-style16" />
                    </strong><span class="auto-style16"><strong>Total :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp; </span>
                <br class="auto-style16" />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageAlign="Right" ImageUrl="~/agregar.jpg" Width="70px" CssClass="auto-style16" />
                    <span class="auto-style16">&nbsp;
                </span>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageAlign="Right" ImageUrl="~/guardar.jpg" CssClass="auto-style16" />
                    <span class="auto-style16">&nbsp;
                </span>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageAlign="Right" ImageUrl="~/volver.jpg" OnClick="ImageButton3_Click" Width="60px" CssClass="auto-style16" />
                <br class="auto-style16" />
                <br class="auto-style15" />
                <br class="auto-style15" />
                </div>
                <hr />
                        <span class="auto-style17">&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                </span><b>
                <br class="auto-style16" />

                </b>

            </section>
            <section>
                <div class="auto-style10">
                    <span class="auto-style17">Seccion 2:</span><b><br class="auto-style16" />
                <br class="auto-style16" />
                    </b><span class="auto-style17">Nombre:&nbsp; </span>
                <asp:TextBox ID="TextBox8" runat="server" Width="146px" CssClass="auto-style18"></asp:TextBox>
                    <span class="auto-style13"><span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cedula:&nbsp; &nbsp;&nbsp;&nbsp; </span></span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style18"></asp:TextBox>
                    <b>
                <br class="auto-style16" />
                <br class="auto-style16" />
                    </b><span class="auto-style17">Telefono:  </span>  <asp:TextBox ID="TextBox6" runat="server" Width="147px" CssClass="auto-style18"></asp:TextBox>
                    <span class="auto-style16"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Direccion:</b> </span>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style15" Width="228px"></asp:TextBox>
                <br class="auto-style16" />
                <br class="auto-style16" />
                <br class="auto-style15" />
                <br class="auto-style15" />
                </div>
                <hr />
            </section>
            <section>

                <span class="auto-style16"><strong>Seccion 3:</strong></span><strong><br class="auto-style16" />
                <br class="auto-style16" />
                </strong><span class="auto-style16"><strong>Monto :</strong></span><strong><br class="auto-style16" />
                <br class="auto-style16" />
                </strong><span class="auto-style16"><strong>Descuento :</strong></span><strong><br class="auto-style16" />
                <br class="auto-style16" />
                </strong><span class="auto-style16"><strong>SubTotal :
                </strong></span><strong>
                <br class="auto-style16" />
                <br class="auto-style16" />
                </strong><span class="auto-style16"><strong>IVA :
                </strong></span><strong>
                <br class="auto-style16" />
                <br class="auto-style16" />
                </strong><span class="auto-style16"><strong>Total :</strong></span><strong><br class="auto-style16" />
                </strong>
                <br />
                <br />

            </section>
        </div>
    </form>
    <p>
&nbsp;
    </p>
</body>
</html>
