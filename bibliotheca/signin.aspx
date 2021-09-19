<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="bibliotheca.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>

    <link href="/assets/css/signin.css" rel='stylesheet' type='text/css'/>

	<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	<script src="/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
    </script>

	<style type="text/css">
		.radioButtonList { list-style:none; margin: 0; padding: 0;}
		.radioButtonList.horizontal li { display: inline;}

		.radioButtonList label{
			display:inline;
    }
</style>
</head>
<body>	
    <form id="form1" runat="server">
    <!-- ======= Header ======= -->
	<header id="header" class="header">
        <a href="Index.aspx"><img src="assets/img/logo_50 (1).png" alt="logo" /></a>
  </header><!-- End Header -->

	<div class="ripple-background">
	  <div class="circle xxlarge shade1"></div>
	  <div class="circle xlarge shade2"></div>
	  <div class="circle large shade3"></div>
	  <div class="circle mediun shade4"></div>
	  <div class="circle small shade5"></div>
	</div>

	<div class="main-content">
		
        <div class="right-w3">
			<div class="sap_tabs">	
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Sign in</span></li>
						<div class="clear"></div>
					</ul>	
					<div class="agile-tb">
						<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
							<form action="#" method="post">						
								<asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="mail"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
								<asp:TextBox ID="txtPswd" TextMode="Password" placeholder="Password" CssClass="lock" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" controltovalidate="txtPswd" ErrorMessage ="Enter Password"></asp:RequiredFieldValidator>
								<br>
								<span class="checkbox1">
									<label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Remember me</label>
								</span>
								<br><br>
                                <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password?</asp:HyperLink>
								<asp:Button Text="Sign in" runat="server" ID="btnSignin" OnClick="btnSignin_Click"></asp:Button>
							</form>
						 </div>
					 </div>
				</div> 
			</div> 			        					            	      
		</div>	
	</div>
	<script src="/assets/js/easyResponsiveTabs.js" type="text/javascript"></script>
		</form>
</body>
</html>