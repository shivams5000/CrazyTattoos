using DataBaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Testimonials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (!IsPostBack)
        {
            ViewTestimonial();
        }
    }

    private void ViewTestimonial()
    {
        crazyTattoosEntities data = new crazyTattoosEntities();
        rptrViewTestimonial.DataSource = data.Testimonials.ToList();
        rptrViewTestimonial.DataBind();
    }

    //rest button
    protected void lnkresetfield_Click(object sender, EventArgs e)
    {
        txtCustomer.Text = "";
        txtTestimonial.Text = "";
    }

    //close button
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        pnlEditTestimonal.Visible = false;
    }

    //close button
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        pnlEditTestimonal.Visible = false;
    }

    //add testimonial
    protected void lnkaddTest_Click(object sender, EventArgs e)
    {
        try
        {
            string customerName, Testimonial;
            customerName = txtCustomer.Text.Trim();
            Testimonial = txtTestimonial.Text.Trim();
            
            if (Checks.Empty(customerName) && Checks.Empty(Testimonial))
            {
                lblmsg.Text = "*Please Fill all Fields!";
            }
            else if (Checks.Empty(Testimonial))
            {
                lblmsg.Text = "*Testimonial info. is required!";
                txtTestimonial.Focus();
            }
            else if (Checks.Empty(customerName))
            {
                lblmsg.Text = "*Customer name is required!";
                txtCustomer.Focus();
            }
            else
            {
                TestimonialInfoData data = new TestimonialInfoData();
                data.CustomerName = customerName;
                data.Testimonial = Testimonial;

                int ans = new TestimonialInfoAction().AddTestimonial(data); //method calling to submit new News
                if (ans > 0)
                {
                    txtCustomer.Text = "";
                    txtTestimonial.Text = "";
                    ViewTestimonial();
                    lblmsg.Text = "*Testimonial is submitted!";

                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    //Update Testimonial here
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string customerName, Testimonial, NewsID;
            customerName = txtnewsheadup.Text.Trim();
            Testimonial = txtnewsup.Text.Trim();
            NewsID = lblnewsid.Text;
            if (Checks.Empty(customerName) && Checks.Empty(Testimonial))
            {
                lblmsgup.Text = "*Please Fill all Fields!";
            }
            else if (Checks.Empty(customerName))
            {
                lblmsgup.Text = "*Customer name is required!";
            }
            else if (Checks.Empty(Testimonial))
            {
                lblmsgup.Text = "*Testimonial info. is required!";
            }
            else
            {
                TestimonialInfoData data = new TestimonialInfoData();
                data.CustomerName = customerName;
                data.Testimonial = Testimonial;
                data.TestimonialId = int.Parse(NewsID);

                int result = new TestimonialInfoAction().UpdateTestimonial(data); //method caling to update news
                if (result > 0)
                {
                    ViewTestimonial();
                    pnlEditTestimonal.Visible = false;
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Testimonial updated succesfully!');", true);

                }



            }
        }
        catch (Exception ex)
        {
            lblmsgup.Text = ex.Message;
        }
    }

    protected void rptrNews_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            crazyTattoosEntities n = new crazyTattoosEntities();

            if (e.CommandName.Equals("del")) // delete one testimonial
            {
                int testimonialID = int.Parse(e.CommandArgument.ToString());
                Testimonial data = new TestimonialInfoAction().ViewTestimonial(testimonialID); // getting a testimonial to delete
                if (data != null)
                {
                    n.Testimonials.Attach(data);
                    n.Testimonials.Remove(data);
                    n.SaveChanges();
                    ViewTestimonial();
                    lblmsg.Text = "*Testimonial Deleted!";
                }
            }
            else if (e.CommandName.Equals("delall"))
            {
                var IDs = from b in n.Testimonials select b.TestimonialId; // Get all Testimonial Id(s)
                foreach (var nid in IDs)
                {
                    Testimonial bt = new Testimonial();
                    bt = n.Testimonials.Single(c => c.TestimonialId == nid); // lamda expression
                    n.Testimonials.Attach(bt);
                    n.Testimonials.Remove(bt);
                }
                n.SaveChanges();
                ViewTestimonial();
            }
            else if (e.CommandName.Equals("edit"))
            {
                int TestID = int.Parse(e.CommandArgument.ToString());
                Testimonial data = new TestimonialInfoAction().ViewTestimonial(TestID); // getting a testimonial to Edit

                if (data != null)
                {
                    lblnewsid.Text = data.TestimonialId.ToString();
                    txtnewsup.Text = data.Testimonial1;
                    txtnewsheadup.Text = data.CustomerName;
                    pnlEditTestimonal.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}