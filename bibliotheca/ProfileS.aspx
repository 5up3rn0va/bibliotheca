<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileS.aspx.cs" Inherits="bibliotheca.ProfileS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
	<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js'></script>
    
    <style>
        body {
            background: #8DC3A8;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #8DC3A8;
        }

        .profile-button {
            background:#8DC3A8;
            box-shadow: none;
            border: none
        }

        .profile-button:hover {
            background: #682773
        }

        .profile-button:focus {
            background: #682773;
            box-shadow: none
        }

        .profile-button:active {
            background: #682773;
            box-shadow: none
        }

        .back:hover {
            color: #682773;
            cursor: pointer
        }

        .circle {
            position: absolute;
            border-radius: 50%;
            background: white;
            animation: ripple 15s infinite;
            box-shadow: 0px 0px 1px 0px #508fb9;
        }

        .small {
            width: 200px;
            height: 200px;
            left: -100px;
            bottom: -100px;
        }

        .medium {
            width: 400px;
            height: 400px;
            left: -200px;
            bottom: -200px;
        }

        .large {
            width: 600px;
            height: 600px;
            left: -300px;
            bottom: -300px;
        }

        .xlarge {
            width: 800px;
            height: 800px;
            left: -400px;
            bottom: -400px;
        }

        .xxlarge {
            width: 1000px;
            height: 1000px;
            left: -500px;
            bottom: -500px;
        }

        .shade1 {
            opacity: 0.2;
        }

        .shade2 {
            opacity: 0.5;
        }

        .shade3 {
            opacity: 0.7;
        }

        .shade4 {
            opacity: 0.8;
        }

        .shade5 {
            opacity: 0.9;
        }

        @keyframes ripple {
            0% {
                transform: scale(0.8);
            }

            50% {
                transform: scale(1.2);
            }

            100% {
                transform: scale(0.8);
            }
        }


        /*--------------------------------------------------------------
        # Header
        --------------------------------------------------------------*/
        #header {
            background: #fff;
            z-index: 997;
            transition: all 0.5s ease;
            padding: 20px 0;
            padding-left: 80px;
        }

        #header #logo h1 {
            color: #505050;
            font-size: 28px;
            font-weight: 600;
            letter-spacing: 1px;
            margin: 0;
        }

        #header #logo h1 a {
            color: #555;
            display: inline-block;
            text-decoration: none;
            float: left;
        }

        #header #logo h1 a span {
            color: #71c55d;
        }

        #header #logo img {
            padding: 0;
            margin: 0;
        }

        #header.header-scrolled {
            background: #fff;
            box-shadow: 0 3px 7px rgba(0, 0, 0, 0.1);
            padding: 12px 0;
        }
    </style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
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
    <div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="assets/img/Seller Icon.png" width="90"></div>
            </div>
            <div class="col-md-8">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                            <a href="Index.aspx"><h6>Back to home</h6></a>
                        </div>
                        <h6 class="text-right">Edit Profile</h6>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass ="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" controltovalidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtEmail" runat="server"  placeholder="Email" CssClass ="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" controltovalidate = "txtEmail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Enter valid email"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtLoc" runat="server" placeholder="Location" CssClass ="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtNum" runat="server" placeholder="Contact No." CssClass ="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mt-5 text-right">
                        <asp:Button Text="Save Profile" runat="server" ID="btnSave" CssClass="btn btn-primary profile-button" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </form>
</body>
</html>