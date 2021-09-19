<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook-School.aspx.cs" Inherits="bibliotheca.AddBook_School" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add School Books</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />

    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="assets/css/addbook.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- /Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
    <!-- //Fonts -->

    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
</head>
<body>
    <form id="form1" runat="server">
     <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">

            <div id="logo">
            <a href="Index.aspx"><img src="assets/img/logo_50 (1).png" alt="logo" /></a>
            </div>

            <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                  <li><a class="nav-link scrollto" href="#get-started">About</a></li>
                  <li><a class="nav-link scrollto" href="#categories">Categories</a></li>
                  <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                  <li><asp:Hyperlink runat=server id=hlSignup cssClass="nav-link scrollto" NavigateUrl="~/login.aspx" >Signup</asp:HyperLink></li>
                  <li><asp:Hyperlink runat=server id=hlSignin cssClass="nav-link scrollto" NavigateUrl="~/signin.aspx" >Signin</asp:HyperLink></li>
                  <li class="dropdown"><asp:Hyperlink runat=server id=hlUser NavigateUrl="#" Visible="False">
              <asp:Label ID="lblUser" runat="server" Text="User"></asp:Label> <i class="bi bi-chevron-down"></i></asp:HyperLink>
            <ul>
              <li><asp:Hyperlink runat=server id=hlProfileB NavigateUrl="~/ProfileB.aspx">Profile</asp:HyperLink></li>
              <li><asp:Hyperlink runat=server id=hlProfileS NavigateUrl="~/ProfileS.aspx" Visible="false">Profile</asp:HyperLink></li>
              <li><asp:Hyperlink runat=server id=hlAdd NavigateUrl="~/AddBook-Category.aspx" Visible="False">Add Book</asp:HyperLink></li>
              <li><asp:LinkButton ID="lbtnSignout" runat="server" OnClick ="lbtnSignout_Click">Sign out</asp:LinkButton></li>
            </ul>
          </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
        </header><!-- End Header -->
    <br>
    <main id="main">
        <div class="wrapper">
        <div class="title">
            Schoolbook Details
        </div>
        <div class="form">
            <div class="input_field">
                <label>Title</label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass ="input"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" controltovalidate="txtTitle" ErrorMessage="Enter book title"></asp:RequiredFieldValidator>
            </div>
            <div class="input_field">
                <label>Author</label>
                <asp:TextBox ID="txtAuthor" runat="server" CssClass ="input"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" controltovalidate="txtAuthor" ErrorMessage="Enter author name"></asp:RequiredFieldValidator>
            </div>
            <div class="input_field">
                <label>ISBN</label>
                <asp:TextBox ID="txtIsbn" runat="server" CssClass ="input"></asp:TextBox>
            </div>
            <div class="input_field">
                <label>Publisher</label>
                <asp:TextBox ID="txtPub" runat="server" CssClass ="input"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" controltovalidate="txtPub" ErrorMessage="Enter punlisher name"></asp:RequiredFieldValidator>
            </div>
            <div class="input_field">
                <label>Pages</label>
                <asp:TextBox ID="txtPages" runat="server" CssClass ="input"></asp:TextBox>
            </div>
            <div class="input_field">
                <label>Year Published</label>
                <asp:TextBox ID="txtYear" runat="server" CssClass ="input"></asp:TextBox>
            </div>
            <div class="input_field">
                <label>Format</label>
                <asp:DropDownList ID="ddlFormat" runat="server" CssClass ="combo" DataSourceID="SqlDataSource1" DataTextField="format" DataValueField="format_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspprojConnectionString %>" SelectCommand="SELECT [format], [format_id] FROM [tbl_format]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddlFormat" InitialValue="0" ErrorMessage="Select book format" />
            </div>
            <div class="input_field">
                <label>Original Price</label>
                <asp:TextBox ID="txtOgPrice" runat="server" CssClass ="input"></asp:TextBox>
            </div>
            <div class="input_field">
                <label>Selling Price</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass ="input"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" controltovalidate="txtPrice" ErrorMessage="Enter selling price"></asp:RequiredFieldValidator>
            </div>
            <div class="input_field">
                <label>Book cover</label>
                <asp:FileUpload ID="fuCover" runat="server" CssClass="input" />
            </div>
            <div class="input_field">
                <label>Board</label>
                <asp:DropDownList ID="ddlBoard" runat="server" CssClass ="combo" DataSourceID="SqlDataSource2" DataTextField="board" DataValueField="board_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspprojConnectionString %>" SelectCommand="SELECT [board], [board_id] FROM [tbl_board]"></asp:SqlDataSource>
            </div>
            <div class="input_field">
                <label>Class</label>
                <asp:DropDownList ID="ddlClass" runat="server" CssClass ="combo">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="input_field">
                <label>Subject</label>
                <asp:DropDownList ID="ddlSubject" runat="server" CssClass ="combo" DataSourceID="SqlDataSource3" DataTextField="subject" DataValueField="subject_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aspprojConnectionString %>" SelectCommand="SELECT [subject], [subject_id] FROM [tbl_subjects]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlSubject" InitialValue="0" ErrorMessage="Select subject" />
            </div>
            <div class="input_field">
                <label>Condition</label>
                <asp:DropDownList ID="ddlCondition" runat="server" CssClass ="combo" DataSourceID="SqlDataSource4" DataTextField="condition" DataValueField="condition_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:aspprojConnectionString %>" SelectCommand="SELECT [condition], [condition_id] FROM [tbl_condition]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlCondition" InitialValue="0" ErrorMessage="Select book condition" />
            </div>
            <div class="inputfield">
                <center><asp:Button Text="Add Book" runat="server" ID="btnAdd" CssClass="button" OnClick="btnAdd_Click"></asp:Button></center>
            </div>
        </div>
    </div>
    </main>
        </form>
</body>
</html>
