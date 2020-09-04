using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
           // lblusernamelogin.Text = Session["Username"].ToString();
        }

        // Active links---------------------------
        String activepage = Request.RawUrl;
        if (activepage.Contains("Dashboard"))
        {

            pg1.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Banners"))
        {
            pg2.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Categories"))
        {
            pg3.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Gallery"))
        {
            pg4.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Testimonials"))
        {
            pg5.Attributes.Add("class", "active");

        }
       
       
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
