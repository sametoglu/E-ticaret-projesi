<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Admin.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/font-awesome.css" rel="stylesheet"/> 
    <script src="js/jquery.min.js"> </script>
    <script src="js/bootstrap.min.js"> </script>
</head>
    <body>
	<div class="login">
		<h1><a href="giris.aspx">Login </a></h1>
		<div class="login-bottom">
			
			<form runat="server"> 
			    
			<div class="col-md-6">
				<div class="login-mail">
                    <asp:RegularExpressionValidator CssClass="alert-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_mail" ForeColor="Red" Font-Size="XX-Small" ViewStateMode="Inherit" Display="Dynamic" ErrorMessage="Bu alan eposta olmalı" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="alert-danger"  ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_mail" ForeColor="Red" Font-Size="XX-Small" ViewStateMode="Inherit" Display="Dynamic" ErrorMessage="Bu alan bos!" ></asp:RequiredFieldValidator>
					<asp:TextBox ID="tb_mail" runat="server" placeholder="Email" ></asp:TextBox>
					<i class="fa fa-envelope"></i>
				</div>

				<div class="login-mail">
                    <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_password" ForeColor="Red" Font-Size="XX-Small" ViewStateMode="Enabled" Display="Dynamic" ErrorMessage="Bu alan bos!" ></asp:RequiredFieldValidator>
					<asp:TextBox ID="tb_password" runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox>
					<i class="fa fa-lock"></i>
				</div>                
			  </div>	
                <div class="col-md-6 login-do">
				    <label class="hvr-shutter-in-horizontal login-sub">
					    <asp:Button ID="btn_login" OnClick="btn_loginClick" runat="server" style="margin-bottom: 0px" Text="Login" />
					    </label>
                    
				    <asp:HyperLink Target="_blank" NavigateUrl="~/sifre.aspx" class="hvr-shutter-in-horizontal" Text="Sifremi Unuttum!" ID="HyperLink1" runat="server"></asp:HyperLink>
			    </div>
			<div class="clearfix"> </div>
			</form>
		</div>
    </div>
</body>
</html>
