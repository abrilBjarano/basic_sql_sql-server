using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_sum_numbers
{
    public partial class sum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            int n1 = Convert.ToInt32(txt_n1.Text); // Convert sentence is used for convert a certain type of variable into another
            int n2 = Convert.ToInt32(txt_n2.Text); // in this case, txt is a type string, and we need to convert it into int
            int res = n1 + n2;

            lbl_res.Text = Convert.ToString(res); // to show the result within the label "res"
        }
    }
}