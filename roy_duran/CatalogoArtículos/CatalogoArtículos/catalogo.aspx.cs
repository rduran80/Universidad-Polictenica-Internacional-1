﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogoArtículos
{
    public partial class catalogo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlProductos.Insert();
        }

        protected void SqlProductos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}