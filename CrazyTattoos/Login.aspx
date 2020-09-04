﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Crazy Tattoo| Admin Login</title><meta charset="UTF-8" />
      <link rel="icon" href="Image/12.png" type="image/png"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="Admin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Admin/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="Admin/css/matrix-login.css" />
        <link href="Admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'/>

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:-100px;">
            <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="index.html">
				 <div class="control-group normal_text"><h4> <img src="images/Crazy tattoo.png" width="200"  alt="Logo" /> </h4></div>
                <h1 style="text-align:center;color:white"><i class="icon-lock"></i> LOGIN</h1>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><asp:TextBox ID="txtusername" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><asp:TextBox ID="txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                   <asp:CheckBox ID="chkremeber" Checked="true" runat="server" /><span> Remember me</span>
                    <span class="pull-right"> <asp:Button ID="btnlogin" class="btn btn-info" runat="server" 
              Text="Login" OnClick="btnlogin_Click" /></span>
                    <br />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Text=""  ForeColor="Red"></asp:Label>
                </div>
            </form>
         
        </div>
        
        <script src="Admin/js/jquery.min.js"></script>  
        <script src="Admin/js/matrix.login.js"></script> 
        </div>
    </form>
</body>
</html>
