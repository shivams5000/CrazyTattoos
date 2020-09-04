using BusinessObject;
using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
    }

    protected void lnkresetfield_Click(object sender, EventArgs e)
    {
        txtConfirmPswd.Text = "";
        txtNewPswd.Text = "";
        txtOldPswd.Text = "";
    }

    //Change admin password implementation
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string oldpassword, newpassword, confirmpassword;
            oldpassword = txtOldPswd.Text.Trim();
            newpassword = txtNewPswd.Text.Trim();
            confirmpassword = txtConfirmPswd.Text.Trim();
            if (Checks.Empty(oldpassword) && Checks.Empty(newpassword) && Checks.Empty(confirmpassword))
            {
                lblmsg.Text = "*Please Fill all Fields!!";
            }
            else if (Checks.Empty(oldpassword))
            {
                lblmsg.Text = "*Old password is required!";
            }
            else if (Checks.Empty(newpassword))
            {
                lblmsg.Text = "*New password is required!";
            }
            else if (Checks.Empty(confirmpassword))
            {
                lblmsg.Text = "*Confirm password is required!";
            }
            else if (newpassword != confirmpassword)
            {
                lblmsg.Text = "*Confirm password not matched!";
            }
            else if (newpassword == confirmpassword && !Checks.Empty(oldpassword) && !Checks.Empty(newpassword) && !Checks.Empty(confirmpassword))
            {
                LoginInfoData data = new LoginInfoData();
                if (Session["UserID"] != null)
                {
                    data.Userid = int.Parse(Session["UserID"].ToString());
                    data.Password = newpassword;
                    data.Oldpassword = oldpassword;
                    if (new LoginInfoAction().changepassword(data)) //change password method calling
                    {
                        lblmsg.Text = "*Password changed successfully!";
                    }
                    else
                    {
                        lblmsg.Text = "*Old password is incorrect!";
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