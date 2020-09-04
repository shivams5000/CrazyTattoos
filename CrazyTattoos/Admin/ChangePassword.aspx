<%@ Page Title="Crazy Tattoos | Change Password" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

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
      <i class="icon-home"></i> Home</a> <a href="#" class="current">Change Password</a> </div>
  <h1>Change Password</h1>
</div>

            <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-picture"></i> </span>
            <h5>Set New Password</h5>
          </div>
          <div class="widget-content nopadding">
            <div class="form-horizontal" id="basic_validate">
              
                <div class="control-group">
                <label class="control-label"> *Old Password :</label>
                <div class="controls">
                   <asp:TextBox ID="txtOldPswd" CssClass="wd" placeholder="Old Password.." TextMode="Password" runat="server"></asp:TextBox>
                </div>

              </div>

                <div class="control-group">
                <label class="control-label">*New Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtNewPswd" CssClass="wd" TextMode="Password" placeholder="New Password.." runat="server" ></asp:TextBox>
                </div>
              </div>
              
                <div class="control-group">
                <label class="control-label">*Confirm Password :</label>
                <div class="controls">
                    <asp:TextBox ID="txtConfirmPswd" CssClass="wd" TextMode="Password" placeholder="Confirm-password.." runat="server" ></asp:TextBox>
                </div>
              </div>
              
              <div class="form-actions">
                  <asp:LinkButton ID="btnSubmit" Class="btn btn-success" runat="server" OnClick="btnSubmit_Click"><span class="icon icon-plus-sign"></span> Submit</asp:LinkButton>
                  <asp:LinkButton ID="lnkresetfield" Class="btn btn-danger" runat="server" OnClick="lnkresetfield_Click"><span class="icon icon-cut"></span> Reset</asp:LinkButton>
                  &nbsp;<asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  </div>
</div>
</asp:Content>

