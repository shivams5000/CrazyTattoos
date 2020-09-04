using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGalleryPortfolio(); //method calling to bind the control with gallery images

            BindRepCategories(); //method calling to bind the control with categories

        }
        //active link of categories
        for (int i = 0; i < repCategories.Items.Count; i++)
        {
            LinkButton btn = repCategories.Items[i].FindControl("btnCate") as LinkButton;
            btn.CssClass = "";
        }

    }

    //Get All Gallery Images
    private void BindGalleryPortfolio()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        var img = from v in data.ImageInfoes select v;
        reptGallery.DataSource = img.ToList();
        reptGallery.DataBind();
    }

    //Get All Categories
    private void BindRepCategories()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        repCategories.DataSource = data.categoryInfoes.ToList();
        repCategories.DataBind();
    }

    protected void repCategories_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            //get Gallery images according to selected Category
            if (e.CommandName.Equals("vw"))
            {
                crazyTattoosEntities data = new crazyTattoosEntities();
                int CategoryId = int.Parse(e.CommandArgument.ToString());

                var pro = from p in data.ImageInfoes join c in data.categoryInfoes on p.CategoryId equals c.CategoryId where p.CategoryId == CategoryId select new { p.ImageID, p.ImageType, p.ImageSize, p.ImageName, p.ImageExtension, c.CategoryName };
                reptGallery.DataSource = pro.ToList();
                reptGallery.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    /// <summary>
    /// Method calling to get "All Products" on button click
    /// </summary>
    protected void btnAllCategories_Click(object sender, EventArgs e)
    {
        try
        {
            BindGalleryPortfolio(); // method calling here
            
            btnAllCategories.CssClass = "active";
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    ///bind css class here
    protected void btnCate_Click(object sender, EventArgs e)
    {

        if (sender is LinkButton)
        {
            LinkButton btn = sender as LinkButton;

            btnAllCategories.CssClass = "";
            
            btn.CssClass = "active";

        }
    }

    
}