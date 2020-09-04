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

public partial class Admin_Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewCategory();
           
        }
        lblmsg.Text = "";
    }

    //Get All Categories on page Load
    private void ViewCategory()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        rptrCategory.DataSource = data.categoryInfoes.ToList();
        rptrCategory.DataBind();
    }

    //ADD or UPDATE category
    protected void lnkaddTest_Click(object sender, EventArgs e)
    {
        try
        {
            string category = txtCategory.Text.Trim();
            if (lnkaddTest.Text == "Update Category") // Update Category
            {
                if (Checks.Empty(category))
                {
                    lblmsg.Text = "*Category Name is Required!!";
                }
                else
                {

                    CategoryInfoData data = new CategoryInfoData();
                    data.CategoryName = category;
                    data.CategoryId = int.Parse(hfCategoryId.Value);
                    int result = new CategoryInfoAction().UpdateCategory(data); //method caling to update news
                    if (result > 0)
                    {
                        ViewCategory();
                        txtCategory.Text = "";
                    }
                }
            }
            else
            { 
              //Add category  
                if (Checks.Empty(category))
                {
                    lblmsg.Text = "*Category Name is Required!!";
                }
                else
                {

                    CategoryInfoData data = new CategoryInfoData();
                    data.CategoryName = category;
                   
                    int ans = new CategoryInfoAction().AddCategory(data); //method calling to submit new News
                    if (ans > 0)
                    {
                        txtCategory.Text = "";
                        ViewCategory();
                        lblmsg.Text = "*Category is successfully Added!";

                    }
                }
            }
        }
        catch (Exception ex)
        {
            if (ex.Message.Contains("UNIQUE"))
            {
                lblmsg.Text = "*This category already exists!";
            }
            else
            {
                lblmsg.Text = ex.Message;
            }
        }
    }

    protected void rptrCategory_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            crazyTattoosEntities n = new crazyTattoosEntities();
            if (e.CommandName.Equals("del"))
            {
                int CategoryId = int.Parse(e.CommandArgument.ToString());
                categoryInfo cid = new categoryInfo();
                cid = n.categoryInfoes.Single(v => v.CategoryId == CategoryId);
                if (cid != null)
                {

                    n.categoryInfoes.Attach(cid);
                    n.categoryInfoes.Remove(cid);
                    n.SaveChanges();
                    ViewCategory();
                    lblmsg.Text = "*New Deleted!";
                }

            }

            // crazyTattoosEntities n = new crazyTattoosEntities();
            if (e.CommandName.Equals("delall"))
            {
                var CateIds = from b in n.categoryInfoes select b.CategoryId; // Get all news Id(s)
                foreach (var nid in CateIds)
                {
                    categoryInfo bt = new categoryInfo();
                    bt = n.categoryInfoes.Single(c => c.CategoryId == nid); // lamda expression
                    n.categoryInfoes.Attach(bt);
                    n.categoryInfoes.Remove(bt); // delete category
                }
                n.SaveChanges(); // submit changes
                ViewCategory(); // Bind Categories again
                
            }
            else if (e.CommandName.Equals("edit"))
            {
                int categoryID = int.Parse(e.CommandArgument.ToString());
                categoryInfo data = new CategoryInfoAction().ViewCategory(categoryID);

                if (data != null)
                {
                    hfCategoryId.Value = data.CategoryId.ToString();
                    txtCategory.Text = data.CategoryName;

                    lnkaddTest.Text = "Update Category";

                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}