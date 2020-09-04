<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myContent" Runat="Server">
     <div class="site-blocks-cover inner-page overlay" style="background-image: url(images/services.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-5 text-center" data-aos="fade">
          <h1 class="text-uppercase">Services</h1>
          <span class="caption d-block text-white">What we offer @ <a href="Default.aspx">Crazy Tattoos</a></span>
        </div>
      </div>
    </div>  

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
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="">
            <div class="text-center">
              <span class="display-4 d-block mb-3 text-primary">
                  <img src="images/permanent.png" alt="Permanent Tattoo" width="100" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Permanent Tattoo</h3>
              <p>Tattoos are created by using special tools that use needles to insert permanent ink into the dermis layer of the skin. The ink changes the pigment of the skin where it's inserted, creating a work of art that lives on in the skin for years and years.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
            <div class="text-center">
              <span class=" display-4 d-block mb-3 text-primary">
                  <img src="images/Background.png" alt="Temporary Tattoo" width="100" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Temporary Tattoo</h3>
              <p>Temporary Body Tattoos could be called as a step ahead in Bindis. They were created to express the eternal desire and bring beauty into every day life through these sizzling tattoos. These can give you a glamorous and exotic look to anybody persona. There is a different design for every mood and every occasion. The best thing is they are affordable, clinically tested & temporary.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="text-center">
              <span class=" display-4 d-block mb-3 text-primary">
                    <img src="images/3dtatttoo.png" alt="3D Art Tattoo" width="80" />
              </span>
              <h3 class="text-uppercase h4 mb-3">3D Art Tattoo</h3>
              <p>3D Tattoos are becoming popular in today's World. Now we have customers often asking for 3D designs or they come with their own design concept.The most important thing about 3D tattoos design is their realistic appeal, which greatly depends upon the expertise of the designer.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="">
            <div class="text-center">
              <span class=" display-4 d-block mb-3 text-primary">
                  <img src="images/potrait.png" alt="Portrait Tattoo" width="100" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Portrait Tattoo</h3>
              <p>Portrait tattoos are a difficult proposition. When done correctly, these are among the most enviable of all inked images. We have Designed Portrait Tattoos in Best Way.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-6 mb-4 mb-lg-4 border-right" data-aos="fade-up" data-aos-delay="100">
            <div class="text-center">
              <span class=" display-4 d-block mb-3 text-primary">
                   <img src="images/bodyPiercing.png" alt="Body Piercing" width="140" />
              </span>
              <h3 class="text-uppercase h4 mb-3">Body Piercing</h3>
              <p>Piercing is done with utmost care and perfection. We should like to share some useful information post piercing process.A stronger mixture is not better; a saline solution that is too strong can irritate your piercing.</p>
            </div>
          </div>
          <%--<div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="text-center">
              <span class="flaticon-box display-4 d-block mb-3 text-primary"></span>
              <h3 class="text-uppercase h4 mb-3">Free Package</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, nobis?</p>
            </div>
          </div>--%>
        </div>
      </div>
    </div>
    <div class="py-5 bg-primary">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6 text-center mb-3 mb-md-0">
            <h2 class="text-uppercase text-white mb-4">Get a Tattoo</h2>
            <a href="Contact.aspx" class="btn btn-bg-primary font-secondary text-uppercase">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

