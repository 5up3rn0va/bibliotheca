<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="bibliotheca.Index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Bibliotheca</title>

    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
    <form id="form1" runat="server">
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div id="logo">
        <a href="Index.aspx"><img src="assets/img/logo_50.png" alt="logo" /></a>
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

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-in">
      <h1>Welcome to Bibliotheca</h1>
      <h2>Your one-stop site for preloved textbooks <i class="fa fa-heart" style="font-size:24px;color:lightgrey"></i></h2>
      <img src="assets/img/logo.png" alt="Hero Imgs" data-aos="zoom-out" data-aos-delay="100">
      <a href="#get-started" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero Section -->

  <main id="main">

    <!-- ======= Get Started Section ======= -->
    <section id="get-started" class="padd-section text-center">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <h2>Search and discover sellers from the comfort of your own home </h2>
          <img src="assets/img/hero-img.png" alt="Hero Imgs" data-aos="zoom-out" data-aos-delay="100">

        </div>
      </div>

      <div class="container">
        <div class="row">

          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="feature-block">

              <img src="assets/img/svg/cloud.svg" alt="img">
              <h4>reduced rates</h4>

            </div>
          </div>

          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="200">
            <div class="feature-block">

              <img src="assets/img/svg/planet.svg" alt="img">
              <h4>environment friendly</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="feature-block">

              <img src="assets/img/svg/asteroid.svg" alt="img">
              <h4>expanding knowledge</h4>
            </div>
          </div>

        </div>
      </div>

    </section><!-- End Get Started Section -->


    <!-- ======= Categories Section ======= -->
    <section id="categories" class="padd-section text-center">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">
          <h2>Categories</h2>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">     
              <a href="SchoolBooks.aspx"><img src="assets/img/svg/school.svg" alt="img"></a>
              <h4>School Books</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">
              <a href="Textbooks.aspx"><img src="assets/img/svg/text-book.svg" alt="img"></a>
              <h4>Textbooks</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">
              <a href="ExamGuides.aspx"><img src="assets/img/svg/exam.svg"alt="img"></a>
              <h4>Exam Guides</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">
              <a href="Pdfs.aspx"><img src="assets/img/svg/ebook.svg" alt="img"></a>
              <h4>Ebooks</h4>
            </div>
          </div>

        </div>
      </div>
    </section>
    <!-- End Categories Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="padd-section">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">
          <h2>Contact</h2>
          <p class="separator">Want to tell us about an issue? Got feedback for us? </p>
          <p class="separator">Reach us here :-) </p>
        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-3 col-md-4">

            <div class="info">
              <div>
                <i class="bi bi-geo-alt"></i>
                <p>Old NH17, Edappally North, Amrita Nagar, Brahmasthanam, Kochi, Kerala 682024</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <p>bibliotheca@email.com</p>
              </div>

              <div>
                <i class="bi bi-phone"></i>
                <p>+1 5589 55488 55</p>
              </div>
            </div>

          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="form-group mt-3">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">Send Message</button></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</form>
</body>

</html>