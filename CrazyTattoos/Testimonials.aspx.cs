using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testimonials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Get All the Testimonials Here
        if(!IsPostBack)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();
            rptrTestimonials.DataSource = data.Testimonials.ToList();
            rptrTestimonials.DataBind();

        }
    }
}