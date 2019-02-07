using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"]==null)
            {
                Response.Redirect("giris.aspx");
            }


            if (Request.QueryString["ad"]!=null)
            {
                PlaceHolder1.Controls.Clear();
                PlaceHolder1.Controls.Add(LoadControl("moduller/" + Request.QueryString["ad"].ToString() + ".ascx"));
            }
        }

        protected void cıkıs_click(object sender, EventArgs e)
        {
            Session["Admin"] = null;
        }

        
    }
}