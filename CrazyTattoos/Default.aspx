<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Crazy Tattoos | Home" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Home" runat="server" ContentPlaceHolderID="myContent">
    <%-----------------------------slider begin-------------------------------------%>
     <div class="slide-one-item home-slider owl-carousel">
      
      <asp:Repeater ID="rptrbanner" runat="server">
        <ItemTemplate>
      <div class="site-blocks-cover inner-page overlay" style="background-image: url('/Banner/<%# Eval("PhotoName") %>');" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-6 text-center" data-aos="fade">
              <%--<h1 class="font-secondary  font-weight-bold text-uppercase">Welcome to Colorlib</h1>--%>
            </div>
          </div>
        </div>
      </div> 
        </ItemTemplate>
      </asp:Repeater>



    </div>
    <%-----------------------------slider end-------------------------------------%>

      <div class="slant-1"></div>

    <div class="site-section first-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center" data-aos="fade"> 
            <span class="caption d-block mb-2 font-secondary font-weight-bold">Outstanding Services</span>
            <h2 class="site-section-heading text-uppercase text-center font-secondary">Love Us Colorlib</h2>
          </div>
        </div>
        <div class="row border-responsive">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 border-right" data-aos="fade-up" data-aos-delay="">
            <div class="text-center">
              <span class="display-4 d-block mb-3 text-primary">
                   <img src="images/permanent.png" alt="Permanent Tattoo" width="100" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Permanent Tattoo</h3>
              <p>Tattoos are created by using special tools that use needles to insert permanent ink into the dermis layer of the skin. The ink changes the pigment of the skin where it's inserted, creating a work of art that lives on in the skin for years and years.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 border-right" data-aos="fade-up" data-aos-delay="100">
            <div class="text-center">
              <span class="display-4 d-block mb-3 text-primary">
                   <img src="images/3dtatttoo.png" alt="3D Art Tattoo" width="80" />
              </span>
              <h3 class="text-uppercase h4 mb-3">3D Art Tattoo</h3>
              <p>3D Tattoos are becoming popular in today's World. Now we have customers often asking for 3D designs. The most important thing about 3D tattoos design is their realistic appeal, which greatly depends upon the expertise of the designer.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 border-right" data-aos="fade-up" data-aos-delay="200">
            <div class="text-center">
              <span class="display-4 d-block mb-3 text-primary">
                   <img src="images/potrait.png" alt="Portrait Tattoo" width="100" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Portrait Tattoo</h3>
              <p>Portrait tattoos are a difficult proposition. When done correctly, these are among the most enviable of all inked images. We have Designed Portrait Tattoos in Best Way.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0" data-aos="fade-up" data-aos-delay="300">
            <div class="text-center">
              <span class=" display-4 d-block mb-3 text-primary">
                   <img src="images/bodyPiercing.png" alt="Body Piercing" width="140" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Body Piercing</h3>
              <p>Piercing is done with utmost care and perfection. We should like to share some useful information post piercing process.A stronger mixture is not better; a saline solution that is too strong can irritate your piercing.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  <div class="site-half">
    <div class="img-bg-1" style="background-image: url('/images/tattooist-making8.jpg');" data-aos="fade"></div>
    <div class="container">
      <div class="row no-gutters align-items-stretch">
        <div class="col-lg-5 ml-lg-auto py-5">
          <span class="caption d-block mb-2 font-secondary font-weight-bold">About Us</span>
          <h2 class="site-section-heading text-uppercase font-secondary mb-5">Tattoo Artist</h2>
          <p>A tattoo artist designs and applies images to people’s skin using indelible inks. Tattoos have existed in human culture since time immemorial. Before the introduction of the written word, the ancient Europeans painted themselves and their surroundings with ornate designs. Likewise aboriginal peoples all over the world continue to use a variety of natural materials to indelibly mark themselves. In doing so they delineate heritage, authority, achievements and a myriad of other concepts.</p>

         
        </div>
      </div>
    </div>
  </div>

  <div class="site-half block">
    <div class="img-bg-1 right" style="background-image: url('images/bodyTattoo.jpg');" data-aos="fade"></div>
    <div class="container">
      <div class="row no-gutters align-items-stretch">
        <div class="col-lg-5 mr-lg-auto py-5">
         
          <h2 class="site-section-heading text-uppercase font-secondary mb-5">Body Tattoo</h2>
          <p>Modern day tattoos and indeed the word itself are inspired by the Polynesian word for inserting indelible ink onto the skin to make permanent markings, ‘tatu’. Eighteenth century sailors were the first to come into contact with this culture, popularised it and so became inextricably associated with the practice. Today, tattoos are at an apex of popularity, with many celebrities, artists and musicians sporting impressive designs. Once a subject of taboo, this alternative culture has become more mainstream and tattooing is increasingly regulated, creative and popular.</p>

        </div>
      </div>
    </div>
  </div>
    

  <div class="site-section ">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <span class="caption d-block mb-2 font-secondary font-weight-bold">Tattoo - Gallery</span>
            <h2 class="site-section-heading text-uppercase text-center font-secondary">Just have a look</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-13 nav-direction-white">
            <div class="nonloop-block-13 owl-carousel">
              <asp:Repeater ID="rptGallery" runat="server">
                <ItemTemplate>
              <div class="media-image">
                <img width="352" height="292" src="../Admin/Gallery/<%# Eval("ImageName") %>" alt="<%# Eval("ImageName") %>" class="img-fluid">
                <div class="media-image-body">
                  <h2 class="font-secondary text-uppercase"><%# Eval("CategoryName") %></h2>
              
                </div>
              </div>
               </ItemTemplate>
             </asp:Repeater>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    
    <div class="site-section section-counter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="mb-5"><img src="images/people.jpg" alt="Image" class="img-fluid"></p>
          </div>
          <div class="col-lg-5 ml-auto">
            <h2 class="site-section-heading mb-3 font-secondary text-uppercase">Work Done Till Now</h2>
            <p class="mb-5">Tattooing is one of the oldest art forms known to man; in ancient times tattoos were not only applied for decoration, but for religious significance or as a status symbol.</p>

            <div class="row">
              <div class="col-lg-6">
                <div class="counter">
                  <span class="caption">Tattoos</span>
                  <span style="color: #dc3545 !important;" class="number" data-number="57000">0</span>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="counter">
                  <span class="caption">Piercing</span>
                  <span class="number" style="color: #dc3545 !important;" data-number="21000">0</span>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>

    
    <div class="site-section block-14 nav-direction-white">

      <div class="container">
        
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center text-uppercase">Testimonials</h2>
          </div>
        </div>

        <div class="nonloop-block-14 owl-carousel">
          
            <asp:Repeater ID="rptTesti" runat="server">
             <ItemTemplate>
            <div class="d-block block-testimony mx-auto text-center">
              <div class="person w-25 mx-auto mb-4">
                <img src="images/person_4.png" alt="Image" class="img-fluid rounded-circle w-25 mx-auto">
              </div>
              <div>
                <h2 runat="server" class="h5 mb-4"><%# Eval("customerName") %></h2>
                <blockquote runat="server">&ldquo;<%# Eval("Testimonial1") %>&rdquo;</blockquote>
              </div>
            </div>
          </ItemTemplate>
            </asp:Repeater>

        </div>

      </div>
      
    </div>


    <div class="py-5 bg-primary">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6 text-center mb-3 mb-md-0">
            <h2 class="text-uppercase text-white mb-4" data-aos="fade-up">Get a tattoo</h2>
            <a href="Contact.aspx" class="btn btn-bg-primary font-secondary text-uppercase" data-aos="fade-up" data-aos-delay="100">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
