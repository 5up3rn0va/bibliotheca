<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook-Category.aspx.cs" Inherits="bibliotheca.AddBook_Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Choose Category</title>

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

    <style>
        .footer {
          position: fixed;
          left: 0;
          bottom: 0;
          width: 100%;
          color: white;
        }
        #header {
            padding-left: 80px;
        }
    </style>
</head>

<body>

  <!-- ======= Header ======= -->
	<header id="header" class="header">
        <a href="Index.aspx"><img src="assets/img/logo_50 (1).png" alt="logo" /></a>
    </header>
  <!-- End Header -->

    <!-- ======= Categories Section ======= -->
    <section id="categories" class="padd-section text-center">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">
          <h2>Categories</h2>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">     
              <a href="AddBook-School.aspx"><img src="assets/img/svg/school.svg" alt="img"></a>
              <h4>School Books</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">
              <a href="AddBook-Text.aspx"><img src="assets/img/svg/text-book.svg" alt="img"></a>
              <h4>Textbooks</h4>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="feature-block">
              <a href="AddBook-Guide.aspx"><img src="assets/img/svg/exam.svg"alt="img"></a>
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

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

  <!-- footer -->
    <div class="footer">
      <img src="assets/img/hero-bg.png">
    </div>
  <!-- //footer -->

</body>

</html>
