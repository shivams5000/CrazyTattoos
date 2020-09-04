<%@ Page Title="Crazy Tattoos | Categories" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Admin_Categories" %>

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
      <i class="icon-home"></i> Home</a> <a href="#" class="current">Categories</a> </div>
  <h1>Categories</h1>
</div>

    <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Add Categories</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
                <div class="control-group">
                <label class="control-label"> *Category Name :</label>
                <div class="controls">
                   <asp:TextBox ID="txtCategory" CssClass="wd" placeholder="Category Name.." runat="server"></asp:TextBox>
                </div>

              </div>

              <div class="form-actions">
                  <asp:LinkButton ID="lnkaddTest" Class="btn btn-success" runat="server" OnClick="lnkaddTest_Click"><span class="icon icon-plus-sign"></span> Add Category</asp:LinkButton>
                  
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>

            <asp:Repeater ID="rptrCategory" runat="server" OnItemCommand="rptrCategory_ItemCommand">
            <HeaderTemplate>
                <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Categories</h5>
               <asp:LinkButton Visible="true" Style="float:right;"  OnClientClick="return confirm('Are you sure to delete all the categories?');" ID="lnkalldel" Class="btn btn-danger" runat="server" CommandName="delall" ><span class="icon icon-trash"></span> Delete All</asp:LinkButton>
              
          </div>
          <div class="widget-content nopadding">
              
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  
                  <th>Category Name</th>
                
                    <th>Action</th>
                </tr>
              </thead>
              <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                 <tr class="odd gradeX">
                 
                  <td style="text-align:center;"><%# Eval("CategoryName") %></td>
                    
                  <td class="Center">
                       <asp:LinkButton ToolTip="Edit" ID="lnkedit" CssClass="btn btn-info"  CommandName="edit"  CommandArgument='<%# Eval("CategoryID") %>' runat="server"><span class="icon icon-edit"></span></asp:LinkButton>
                      <asp:LinkButton ID="lnkdelete" ToolTip="Delete" CssClass="btn btn-danger" OnClientClick="return confirm('If you delete this category, the corresponding tattoos will also be deleted. Do you want to proceed?');" CommandName="del" CommandArgument='<%# Eval("CategoryID") %>' runat="server"><span class="icon icon-trash"></span></asp:LinkButton></td>
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
            <asp:HiddenField ID="hfCategoryId" runat="server" />
</div>
</asp:Content>

