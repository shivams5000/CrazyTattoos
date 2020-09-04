<%@ Page Title="Crazy Tattoos | Gallery" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myAdminContent" Runat="Server">
    <style>
        .wd {
            width:400px !important;
        }
    </style>
        <div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="Dashboard.aspx" title="Go to Home" class="tip-bottom">
      <i class="icon-home"></i> Home</a> <a href="#" class="current">Tattoo Gallery</a> </div>
  <h1>Tattoo Gallery</h1>
</div>

            <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Add Tattoos</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
                <div class="control-group">
                <label class="control-label"> *Select Category :</label>
                <div class="controls">
                   
                    <asp:DropDownList ID="ddlCategory" CssClass="wd" runat="server"></asp:DropDownList>
                </div>

              </div>

                <div class="control-group">
                <label class="control-label">*Choose Image(s) :</label>
                <div class="controls">
                     <asp:FileUpload ID="fuImage"  runat="server" AllowMultiple="True" />
                </div>
              </div>
              
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddTest" Class="btn btn-success" runat="server" OnClick="lnkaddTest_Click"><span class="icon icon-plus-sign"></span> Add Tattoo</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

            <asp:Repeater ID="rptrTattooGallery" runat="server" OnItemCommand="rptrTattooGallery_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Tattoo Gallery</h5>
          </div>
          <div class="widget-content nopadding">
               <asp:LinkButton Visible="false" Style="float:right;margin:5px;"  OnClientClick="return confirm('Are you sure to delete all Tattoos?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
              
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                
                  <th>Category Name</th>
                  <th>Image</th>
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                
                  <td><%# Eval("CategoryName") %></td>
                     <td><img width="100" height="100" src="../Admin/Gallery/<%# Eval("ImageName") %>" alt="<%# Eval("ImageName") %>" ></td>
                  <td class="Center">
                      
                      <asp:LinkButton ToolTip="Delete" ID="lnkdelete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure to delete this tattoo?');" CommandName="del" CommandArgument='<%# Eval("ImageID") %>' runat="server"><span class="icon icon-trash"></span></asp:LinkButton></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
             </tbody>
            </table>
          </div>
        </div>
                </div>
                </div>
                </div>
            </FooterTemplate>

        </asp:Repeater>
         


</div>
</asp:Content>

