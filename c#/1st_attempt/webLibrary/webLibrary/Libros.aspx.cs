using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webLibrary
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                leerLibros();
            }
        }

        private void leerLibros()
        {
            DataTable dt = new DataTable();
            dt = new clsFunctions().LeerLibros();
            gvLibros.DataSource = dt;
            gvLibros.DataBind();
        }
    }
}