using BusinessObject;
using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDdlCategory();
            ViewImages();
        }
        lblmsg.Text = "";
       
    }
    //Get all Gallery images
    private void ViewImages()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        //var img = from v in data.ImageInfoes select v;
        var img = from p in data.ImageInfoes join c in data.categoryInfoes on p.CategoryId equals c.CategoryId select new { p.ImageID, p.ImageType, p.ImageSize, p.ImageName, p.ImageExtension, c.CategoryName };
        rptrTattooGallery.DataSource = img.ToList();
        rptrTattooGallery.DataBind();
    }

    //Bind all the categories to select
    private void BindDdlCategory()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        ddlCategory.DataSource = data.categoryInfoes.ToList();
        ddlCategory.DataValueField = "CategoryId";
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("Select Category..", "-1"));
    }

    // Add Image to Gallery
    protected void lnkaddTest_Click(object sender, EventArgs e)
    {
        try
        {
            string CategoryId = ddlCategory.SelectedValue;
            if (CategoryId.Contains("-1"))
            {
                lblmsg.Text = "*Category is required!";
            }

            else if (fuImage.HasFiles == false)
            {
                lblmsg.Text = " *Image is required!";
            }
            else
            {
                foreach (var file in fuImage.PostedFiles)
                {

                    ImageInfoData data = new ImageInfoData();
                    data.ImageName = file.FileName;
                    data.ImageExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.ImageSize = file.ContentLength;
                    data.ImageType = file.ContentType;
                    data.CategoryId = int.Parse(CategoryId);

                    //Only images of .jpeg, .jpg and .png type are allowed
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/jpg" || file.ContentType == "image/png")
                    {
                       
                       
                        int id = new ImageInfoAction().AddPhoto(data);
                        if (id != 0)
                        {
                            string path = Server.MapPath("~/Admin/Gallery/" +data.ImageName);
                            file.SaveAs(path);
                            ViewImages();
                           
                            ddlCategory.SelectedIndex = 0;
                            lblmsg.Text = " *Tattoo image added! ";
                        }
                        
                    }
                    else
                    {
                        lblmsg.Text = "Please choose a .JPEG or .PNG image only";
                    }

                }
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void rptrTattooGallery_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            crazyTattoosEntities data = new crazyTattoosEntities();
           
            if (e.CommandName.Equals("del")) //// delete one image
            {
                int ImageID = int.Parse(e.CommandArgument.ToString());

                ImageInfo cid = new ImageInfo();
                cid = data.ImageInfoes.Single(v => v.ImageID == ImageID);
                if (cid != null)
                {
                    
                    string path = Server.MapPath("~/Admin/Gallery/" + cid.ImageName);
                    if (File.Exists(path))
                        {
                            File.Delete(path);
                            data.ImageInfoes.Attach(cid);
                            data.ImageInfoes.Remove(cid);
                            data.SaveChanges();
                            ViewImages();
                        }
                    
                }
            }
          
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}