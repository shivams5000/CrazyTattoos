using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();

            //Get all slider images on page load
            BindHomeSlider();

            //Get All Testimonials on page Load           
            var test = from t in data.Testimonials select t;
            rptTesti.DataSource = test.ToList();
            rptTesti.DataBind();

            //Method calling to get gallrey images on page load
            ViewImages();
        }
    }

    // Get all images for home slider / banner
    private void BindHomeSlider()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();

        //Get all slider images on page load
        var ban = from b in data.ImageSliders select b;
        rptrbanner.DataSource = ban.ToList();
        rptrbanner.DataBind();
    }

    //get gallrey images on page load - implementation
    private void ViewImages()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        var img = from p in data.ImageInfoes join c in data.categoryInfoes on p.CategoryId equals c.CategoryId select new { p.ImageID, p.ImageType, p.ImageSize, p.ImageName, p.ImageExtension, c.CategoryName };
        rptGallery.DataSource = img.ToList();
        rptGallery.DataBind();
    }
}