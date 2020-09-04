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

public partial class Admin_Banners : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            ViewBanner();
        }
        lblmsg.Text = "";
    }
    //Get All Slider Images
    private void ViewBanner()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        rptrBanner.DataSource = data.ImageSliders.ToList();
        rptrBanner.DataBind();
    }
    protected void lnkaddBanner_Click1(object sender, EventArgs e)
    {
        try
        {

            if (fufBanner.HasFiles == false)
            {
                lblmsg.Text = " *Please select a file to upload";
            }
            else
            {
                foreach (var file in fufBanner.PostedFiles)
                {

                    HomeImageInfoData data = new HomeImageInfoData();
                    data.BannerName = file.FileName;
                    data.BannerExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.BannerSize = file.ContentLength;
                    data.BannerType = file.ContentType;

                    // Image file formats with (.jpeg or .png) are allowed
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/png")
                    {
                        
                        int id = new HomeImageInfoAction().AddPhoto(data);
                        if (id != 0)
                        {
                            string path = Server.MapPath("~/Banner/" + data.BannerName);
                            file.SaveAs(path);
                            ViewBanner();

                            lblmsg.Text = " *Files is Uploaded! ";
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

    protected void rptrBanner_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            crazyTattoosEntities Cdata = new crazyTattoosEntities();
            if (e.CommandName.Equals("del")) // to delete any slider image
            {
                int BannerID = int.Parse(e.CommandArgument.ToString());
                ImageSlider data = new HomeImageInfoAction().ViewPhoto1(BannerID); // retrive the info for slider image
                if (data != null)
                {
                     Cdata.ImageSliders.Attach(data); 
                    Cdata.ImageSliders.Remove(data); // remove image slider info from database
                    Cdata.SaveChanges();

                    string path = Server.MapPath("~/Banner/" + data.PhotoName);
                        if (File.Exists(path))
                        {
                             File.Delete(path); //delete the image from path
                            ViewBanner(); // bind the banners again
                        
                        }
                    }
                }
            
            else if (e.CommandName.Equals("delall")) // to delete all the slider images at once
            {

                var dbBannerId = from b in Cdata.ImageSliders select b.PhotoId; // Get all Slider Image Id(s)

                string path;
                foreach (var bid in dbBannerId)
                {
                    ImageSlider bt = new ImageSlider();
                    bt = Cdata.ImageSliders.Single(c => c.PhotoId == bid); // lamda expression


                    path = Server.MapPath("~/Banner/" + bt.PhotoName);
                    if (File.Exists(path))
                    {
                        File.Delete(path); // remove images from the path

                    }

                    Cdata.ImageSliders.Attach(bt);
                    Cdata.ImageSliders.Remove(bt); // remove banners info


                }

                Cdata.SaveChanges();
                ViewBanner(); // method calling

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}