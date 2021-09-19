<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Textbooks.aspx.cs" Inherits="bibliotheca.Textbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discover Textbooks</title>
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
    <!-- banner -->
    <div class="ab-info-main py-md-5 py-4">
        <div class="container py-md-3">
            <!-- top Products -->
            <div class="row">
                <!-- product left -->
                <div class="side-bar col-lg-4">

                    <div class="search-bar w3layouts-newsletter">
                        <h3 class="sear-head">Search Here..</h3>
                        <form action="#" method="post" class="d-flex">
                            <input type="search" placeholder="keyword" name="search" class="form-control" required="">
                            <button class="btn1"><span class="fa fa-search"></span></button>
                        </form>
                    </div>
                    <!--department -->
                    <div class="left-side my-4">
                        <h3 class="sear-head">Subject</h3>
                        <ul class="w3layouts-box-list">
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Mathematics</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Commerce</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Languages</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Business</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Electronics</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Medicine</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Psychology</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Chemistry</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Physics</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Visual Media</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Law</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">History</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Earth Sciences</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Biology</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Sociology</span>
                            </li>
                        </ul>
                    </div>
                    <!-- department -->   
                </div>
            </div>
        </div>
    </div>
    </main>
    <!-- footer -->
    <!-- ======= Hero Section ======= -->
  <section id="hero">
  </section><!-- End Hero Section -->
    <!-- //footer -->
</body>
</html>
