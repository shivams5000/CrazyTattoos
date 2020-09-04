<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Testimonials.aspx.cs" Inherits="Testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myContent" Runat="Server">
       <div class="site-blocks-cover inner-page overlay" style="background-image: url(images/testimonials2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-5 text-center" data-aos="fade">
          <h1 class="text-uppercase">Testimonials</h1>
          <span class="caption d-block text-white">What customer says about <a href="Default.aspx">Crazy Tattoos</a></span>
        </div>
      </div>
    </div>  

    <div class="slant-1"></div>

    <div class="site-section first-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
            <span class="caption d-block mb-2 font-secondary font-weight-bold">Testimonials</span>
            <h2 class="site-section-heading text-uppercase text-center font-secondary">Happy Customers</h2>
          </div>
        </div>
        <div class="row">
            <asp:Repeater ID="rptrTestimonials" runat="server">
                <ItemTemplate>
          <div class="col-md-6 col-lg-6 mb-4">
            <div class="d-block block-testimony mx-auto text-center">
              <div class="person w-25 mx-auto mb-4">
                <img src="images/person_4.png" alt="Image" class="img-fluid rounded-circle w-50 mx-auto">
              </div>
              <div>
                <h2 runat="server" class="h5 mb-4"><%# Eval("customerName") %></h2>
                <blockquote runat="server">&ldquo;<%# Eval("Testimonial1") %>&rdquo;</blockquote>
              </div>
            </div>

          </div>
       </ItemTemplate>
         </asp:Repeater>

        </div>
      </div>
    </div>
</asp:Content>

