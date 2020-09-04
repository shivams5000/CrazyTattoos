<%@ Page Title="Crazy Tattoos | Testimonials" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Testimonials.aspx.cs" Inherits="Admin_Testimonials" %>

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
      <i class="icon-home"></i> Home</a> <a href="#" class="current">Testimonials</a> </div>
  <h1>Testimonials</h1>
</div>

            <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Add Testimonials</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
                <div class="control-group">
                <label class="control-label"> *Customer Name :</label>
                <div class="controls">
                   <asp:TextBox ID="txtCustomer" CssClass="wd" placeholder="Customer Name.." runat="server"></asp:TextBox>
                </div>

              </div>

                <div class="control-group">
                <label class="control-label">*Testimonial :</label>
                <div class="controls">
                    <asp:TextBox ID="txtTestimonial" CssClass="wd" Rows="6" TextMode="MultiLine" placeholder="Testimonial.." runat="server" ></asp:TextBox>
                </div>
              </div>
              
              
              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddTest" Class="btn btn-success" runat="server" OnClick="lnkaddTest_Click"><span class="icon icon-plus-sign"></span> Add Testimonial</asp:LinkButton>
                  <asp:LinkButton ID="lnkresetfield" Class="btn btn-danger" runat="server" OnClick="lnkresetfield_Click"><span class="icon icon-cut"></span> Reset</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

            <asp:Repeater ID="rptrViewTestimonial" runat="server" OnItemCommand="rptrNews_ItemCommand" >
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Testimonals Gallery</h5>
          </div>
          <div class="widget-content nopadding">
               <asp:LinkButton Visible="false" Style="float:right;margin:5px;"  OnClientClick="return confirm('Are you sure to delete all testimonials?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
              
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                
                  <th>Customer Name</th>
                  <th>Testimonial</th>
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                 
                  <td><%# Eval("customername") %></td>
                     <td><%# Eval("Testimonial1") %></td>
                  <td class="Center">
                       <asp:LinkButton ID="lnkedit" ToolTip="Edit" CssClass="btn btn-info"  CommandName="edit"  CommandArgument='<%# Eval("testimonialid") %>' runat="server"><span class="icon icon-edit"></span></asp:LinkButton>
                      
                      <asp:LinkButton ID="lnkdelete" ToolTip="Delete" CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure to want delete this testimonial?');" CommandName="del" CommandArgument='<%# Eval("testimonialid") %>' runat="server"><span class="icon icon-trash"></span></asp:LinkButton></td>
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
          <asp:Panel ID="pnlEditTestimonal" runat="server" Visible="false">
        <div id="myModal" class="modal hide" style="display:block !important" >
              <div class="modal-header">
                <%--<button data-dismiss="modal" class="close" type="button">×</button>--%>
                  <asp:LinkButton ID="LinkButton3" class="close" runat="server" OnClick="LinkButton3_Click">×</asp:LinkButton>
                <h3><span class="icon icon-edit"></span> EDIT</h3>
              </div>
              <div class="modal-body">
                <p>
                    <div class="form-horizontal" id="basic_validate">
              
                <div class="">
                <label class="control-label"> Customer Name :</label>
                    <asp:Label ID="lblnewsid" runat="server" Visible="False"></asp:Label>
                <div class="controls">
                   <asp:TextBox ID="txtnewsheadup" placeholder="Customer Name.." runat="server"></asp:TextBox>
                </div>

              </div>
              
              <div class="">
                <label class="control-label">Testimonial :</label>
                <div class="controls">
                    <asp:TextBox ID="txtnewsup" Rows="5" placeholder="Testimonial.." runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
              </div>
              <div class="form-actions">
                  <asp:LinkButton ID="LinkButton1" Class="btn btn-success" runat="server" OnClick="LinkButton1_Click" ><span class="icon icon-save"></span> Update</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton2" Class="btn btn-inverse" runat="server" OnClick="LinkButton2_Click"  ><span class="icon icon-remove"></span> Cancel</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsgup" runat="server" Text="" ForeColor="Red"></asp:Label>
                
              </div>
            </div>
                    
                    <p>
                    </p>
                    
                </p>
              </div>
            </div>
            <div class="modal-backdrop  in"></div>
            </asp:Panel>


</div>
</asp:Content>

