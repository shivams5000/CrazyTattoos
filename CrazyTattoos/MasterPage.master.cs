using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        // Active links---------------------------
        String activepage = Request.RawUrl;
        if (activepage.Contains("Default"))
        {

            p1.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("About"))
        {
            p2.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Services"))
        {
            p3.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Portfolio"))
        {
            p4.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Contact"))
        {
            p5.Attributes.Add("class", "active");

        }
        //else if (activepage.Contains("Testimonials"))
        //{
        //    p6.Attributes.Add("class", "active");

        //}
    }
}
