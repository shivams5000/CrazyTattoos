using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        crazyTattoosEntities nidata = new crazyTattoosEntities();

        var count = (from b in nidata.ImageSliders select b).Count(); // total banners
        if (count.ToString() != null)
        {
            lblBanner.Text = count.ToString();
        }

        var count1 = (from i in nidata.ImageInfoes select i).Count(); // total Gallery images
        if (count1.ToString() != null)
        {
            lblGallery.Text = count1.ToString();
        }

        var count2 = (from i in nidata.Testimonials select i).Count(); // total testimonials
        if (count2.ToString() != null || count2.ToString() != "")
        {
            lblTestimonials.Text = count2.ToString();
        }

        var count3 = (from i in nidata.categoryInfoes select i).Count(); // total categories
        if (count3.ToString() != null || count3.ToString() != "")
        {
            lblCategory.Text = count3.ToString();
        }
        
    }
}