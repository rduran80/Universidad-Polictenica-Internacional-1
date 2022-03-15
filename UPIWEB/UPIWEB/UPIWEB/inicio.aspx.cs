using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UPIWEB
{
    public partial class inicio : System.Web.UI.Page
    {
        float num1 = 0;
        float num2 = 0;
        float resultado = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            num1 = float.Parse(TxtValor1.Text);
            num2 = float.Parse(TxtValor2.Text);
            if (RadioResta.Checked)
            {
                lresultado.Text = (num1- num2).ToString();
            }
           if (RadioSuma.Checked)
            {
                lresultado.Text = (num1 + num2).ToString();
            }
            if (RadioMulti.Checked)
            {
                lresultado.Text = (num1 * num2).ToString();
            }
            if (RadioDiv.Checked)
            {
                lresultado.Text = (num1 / num2).ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(TxtValor1.Text);
            float num2 = float.Parse(TxtValor2.Text);

            if (CheckSuma.Checked)
            {
                lresultado.Text = (num1 + num2).ToString();
            }
            if (CheckMulti.Checked)
            {
                lresultado.Text = (num1 * num2).ToString();
            }
            if (CheckDiv.Checked)
            {
                lresultado.Text = (num1 / num2).ToString();
            }
            if (CheckResta.Checked)
            {
                lresultado.Text = (num1 - num2).ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(TxtValor1.Text);
            float num2 = float.Parse(TxtValor2.Text);

            if (Dropoperaciones.SelectedValue == "Suma")
            {
                lresultado.Text = (num1 + num2).ToString();
            }

            if (Dropoperaciones.SelectedValue == "Resta")
            {
                lresultado.Text = (num1 - num2).ToString();
            }
            if (Dropoperaciones.SelectedValue == "Multiplicación")
            {
                lresultado.Text = (num1 * num2).ToString();
            }
            if (Dropoperaciones.SelectedValue == "División")
            {
                lresultado.Text = (num1 / num2).ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            float num1 = float.Parse(TxtValor1.Text);
            float num2 = float.Parse(TxtValor2.Text);

            if (ListBox1.SelectedValue == "suma")
            {
                lresultado.Text = (num1 + num2).ToString();
            }
            if (ListBox1.SelectedValue == "resta")
            {
                lresultado.Text = (num1 - num2).ToString();
            }
            if (ListBox1.SelectedValue == "multiplicacion")
            {
                lresultado.Text = (num1 * num2).ToString();
            }
            if (ListBox1.SelectedValue == "division")
            {
                lresultado.Text = (num1 / num2).ToString();
            }
        }
    }
}