using BusinessObject;
using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserNamecookie"] != null && Request.Cookies["passwordcoookie"] != null)
        { //if cookies exists then set text from cookie value to textbox
            txtusername.Text = Request.Cookies["UserNamecookie"].Value;
            txtpassword.Attributes["value"] = Request.Cookies["passwordcoookie"].Value;
        }
    }

    //Admin login implementation
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {

            if (chkremeber.Checked)  //set Cookies for 90 days
            {
                Response.Cookies["UserNamecookie"].Expires = DateTime.Now.AddDays(90);
                Response.Cookies["passwordcoookie"].Expires = DateTime.Now.AddDays(90);
            }
            else
            {// else - expire the cookies
                Response.Cookies["UserNamecookie"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["passwordcoookie"].Expires = DateTime.Now.AddDays(-1);

            }
            //create cookies
            Response.Cookies["UserNamecookie"].Value = txtusername.Text.Trim();
            Response.Cookies["passwordcoookie"].Value = txtpassword.Text.Trim();
            string username, password;
            username = txtusername.Text.Trim();
            password = txtpassword.Text.Trim();
            if (Checks.Empty(username) && Checks.Empty(password))
            {
                lblmsg.Text = "*Please fill all fields!!";
            }
            else if (Checks.Empty(username))
            {
                lblmsg.Text = "*Please Enter Username!!";
            }
            else if (Checks.Empty(password))
            {
                lblmsg.Text = "*Please Enter Password!!";
            }
            else if (!Checks.Empty(username) && !Checks.Empty(password))
            {
                LoginInfoData data = new LoginInfoData();
                data.Username = username;
                data.Password = password;
                loginInfo li = new LoginInfoAction().login(data); // method calling for login
                if (li != null)
                {
                    Session["Username"] = txtusername.Text.Trim(); //create session for user
                    Session["UserID"] = li.LoginInfoId;
                    Session["Loginstatus"] = true;
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "*Invalid Username Or Password!!";
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}