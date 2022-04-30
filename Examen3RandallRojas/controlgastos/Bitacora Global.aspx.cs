using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controlgastos
{
    public partial class Bitacora_Global : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnfiltrar_Click(object sender, EventArgs e)
        {
            string fecha1 = cal2.SelectedDate.ToString("yyyy-MM-dd");
            string fecha2 = cal3.SelectedDate.ToString("yyyy-MM-dd");
            if (ddtipo.SelectedIndex == 0)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView3.DataSource = Dbcon.Querysprueba("exec totalingresoglobal '" + fecha1 + "','" + fecha2 + "'");
                    GridView3.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec filtroglobalingreso '" + fecha1 + "','" + fecha2 + "'");
                    GridView2.DataBind();
                }

            }
            else if (ddtipo.SelectedIndex == 1)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView3.DataSource = Dbcon.Querysprueba("exec totalgastoglobal '" + fecha1 + "','" + fecha2 + "'");
                    GridView3.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec filtroglobalgasto '" + fecha1 + "','" + fecha2 + "'");
                    GridView2.DataBind();
                }

            }
            else if (ddtipo.SelectedIndex == 2)
            {
                if (fecha1 == "0001-01-01" || fecha2 == "0001-01-01")
                {
                    lblerror.Text = "Porfavor digite fechas";
                }
                else
                {
                    GridView3.DataSource = Dbcon.Querysprueba("exec totalambos '" + fecha1 + "','" + fecha2 + "'");
                    GridView3.DataBind();
                    GridView2.DataSource = Dbcon.Querysprueba("exec filtroglobal '" + fecha1 + "','" + fecha2 + "'");
                    GridView2.DataBind();
                }
            }
            else if (ddtipo.SelectedIndex == 3)
            {
                GridView3.DataSource = Dbcon.Querysprueba("exec totaltotal");
                GridView3.DataBind();
                GridView2.DataSource = Dbcon.Querysprueba("exec reporteglobal");
                GridView2.DataBind();

            }
        }
    }
}