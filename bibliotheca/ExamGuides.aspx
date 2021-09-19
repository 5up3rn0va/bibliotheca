<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamGuides.aspx.cs" Inherits="bibliotheca.ExamGuides" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discover Exam Guides</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
   
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="assets/css/display.css" type="text/css" media="all" />
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
    <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">

            <div id="logo">
            <a href="Index.aspx"><img src="assets/img/logo_50 (1).png" alt="logo" /></a>
            </div>

            <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="Index.aspx#hero">Home</a></li>
                <li><a class="nav-link scrollto" href="Index.aspx#get-started">About</a></li>
                <li><a class="nav-link scrollto" href="Index.aspx#categories">Categories</a></li>
                <li><a class="nav-link scrollto" href="Index.aspx#contact">Contact</a></li>
                <li><a class="nav-link scrollto" href="login.aspx">Signin/Signup</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
        </header><!-- End Header -->
    <main id="main">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </main>
    <!-- footer -->
    <!-- ======= Hero Section ======= -->
  <section id="hero">
  </section><!-- End Hero Section -->
    <!-- //footer -->
</body>
</html>
