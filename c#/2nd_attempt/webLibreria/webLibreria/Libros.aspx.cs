using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webLibreria
{
    public partial class Libros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LeerLibros();
            }
        }
    }

    private void LeerLibros() // create this method.
    {
        DataTable dt = new DataTable();
        dt = new clsFunciones().LeerLibros();
        gvLibros.DataSource = dt;
        gvLibros.DataBind();
    }
}