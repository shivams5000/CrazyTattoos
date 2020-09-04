<%@ Page Title="Crazy Tattoos | Portfolio" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myContent" Runat="Server">
    <link rel="stylesheet" href="css/main.css"/>
        <div class="site-blocks-cover inner-page overlay" style="background-image: url(images/portfolio2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-5 text-center" data-aos="fade">
          <h1 class="text-uppercase">portfolio</h1>
          <span class="caption d-block text-white">Check it out @ <a href="Default.aspx">Crazy Tattoos</a></span>
        </div>
      </div>
    </div>  

    <div class="slant-1"></div>
<div class="site-section first-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center" data-aos="fade">
            <span class="caption d-block mb-2 font-secondary font-weight-bold">Photo Gallery</span>
            <h2 class="site-section-heading text-uppercase text-center font-secondary">Company's Portfolio</h2>
          </div>
        </div>

          <div class="row">
              
              <div class="col-md-12 col col-12">
              <section class="portfolio-area">
               <div class="filters">
                        <ul>
                            
                            <li>
                                <asp:LinkButton CssClass="active" ID="btnAllCategories" Text="All" runat="server" OnClick="btnAllCategories_Click"></asp:LinkButton>
                            </li>

                        <asp:repeater id="repCategories" runat="server" OnItemCommand="repCategories_ItemCommand">
                         <ItemTemplate>
                             <li>
                             <asp:LinkButton ID="btnCate" CommandName="vw" CommandArgument='<%# Eval("CategoryId") %>' Text='<%# Eval("CategoryName") %>' runat="server" OnClick="btnCate_Click"></asp:LinkButton>
                              </li>
                                 <%--<asp:Button id="btnCate" CommandName="vw" CommandArgument='<%# Eval("CategoryId") %>' cssClass="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" runat="server" Text='<%# Eval("CategoryName") %>' OnClick="btnCate_Click"></asp:Button> --%>
                         </ItemTemplate>
                    </asp:repeater>


                        </ul>
                    </div>
                  </section>
               </div>
          </div>
        <div class="row">
            <asp:Repeater ID="reptGallery" runat="server">
                <ItemTemplate>

          <div class="col-md-6 col-lg-3 mb-4" data-aos="fade-up" data-aos-delay="">
            <a href='Admin/Gallery/<%# Eval("ImageName") %>' data-fancybox="gallery">
                <img src='Admin/Gallery/<%# Eval("ImageName") %>' alt="Image" class="img-fluid" />

            </a>
          </div>
                   
            </ItemTemplate>
                <AlternatingItemTemplate>
                         <div class="col-md-6 col-lg-6 mb-4" data-aos="fade-up" data-aos-delay="">
            <a href='Admin/Gallery/<%# Eval("ImageName") %>' data-fancybox="gallery">
                <img src='Admin/Gallery/<%# Eval("ImageName") %>' alt="Image" class="img-fluid" />

            </a>
          </div>
                         
                </AlternatingItemTemplate>
            </asp:Repeater>
          
        </div>
      </div>
    </div>
    <div class="py-5 bg-primary">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6 text-center mb-3 mb-md-0">
            <h2 class="text-uppercase text-white mb-4">Get a tattoo</h2>
            <a href="Contact.aspx" class="btn btn-bg-primary font-secondary text-uppercase">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

