<%@ Page Language="C#" Title="Crazy Tattoos | Dashboard" ClientIDMode="Static" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>


<asp:Content ID="adminHome" runat="server" ContentPlaceHolderID="myAdminContent">

    <!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="Dashboard.aspx" title="Go to home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="Dashboard.aspx"> <i class="icon-dashboard"></i> My Dashboard </a> </li>
        <li class="bg_lg"> <a href="Banners.aspx"> <i class="icon-film"></i> Banners </a> </li>
          <li class="bg_lr"> <a href="Categories.aspx"> <i class="icon-folder-close"></i> Categories </a> </li>
        <li class="bg_ly"> <a href="Gallery.aspx"> <i class="icon-picture"></i>Gallery / Portfolio </a> </li>
        <li class="bg_ls"> <a href="Testimonials.aspx"> <i class="icon-comment"></i> Testimonials</a> </li>
        
      </ul>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Site Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">
           
            <div class="span12">
              <ul class="site-stats">
                <li class="bg_dg"><a href="Banners.aspx" style="color:white"><i class="icon-film"></i> <strong>
                    <asp:Label ID="lblBanner" runat="server" Text=""></asp:Label></strong> <small>Banners</small></a></li>
              
                   <li class="bg_lr"><a href="Categories.aspx" style="color:white"><i class="icon-folder-close"></i> <strong>
                    <asp:Label ID="lblCategory" runat="server" Text=""></asp:Label></strong> <small>Categories</small></a></li>
               

                  <li class="bg_ly"><a href="Gallery.aspx" style="color:white"><i class="icon-picture"></i> <strong>
                    <asp:Label ID="lblGallery" runat="server" Text=""></asp:Label></strong> <small>Gallery / Portfolio</small></a></li>


                  <li class="bg_ls"><a href="Testimonials.aspx" style="color:white"><i class="icon-comment"></i> <strong>
                    <asp:Label ID="lblTestimonials" runat="server" Text=""></asp:Label></strong> <small>Testimonials</small></a></li>

                  
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box--> 
    <hr/>
  
  </div>
</div>

<!--end-main-container-part-->

</asp:Content>