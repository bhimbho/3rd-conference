<?php
include('classes/autoload.php');
admin_autoloader_no_step();
$conference = new conference;
$speakers = new speakers;
$guideline = new guideline;
$hotel = new hotel;
$reg_fee =  new registration_fee;
$journal =  new journal;
$venue =  new venue;
$sponsors =  new sponsor;
$about =  new about;
$team =  new ourteam;
$callpapers = new callpapers;
?>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from thepixelcurve.com/html/meeta/meeta/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 27 Mar 2022 11:40:56 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>3rd International Conference</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@300;400;500;600;700;800&amp;family=Open+Sans:wght@300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Archivo:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet">

    <!-- CSS
	============================================ -->

    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/dropify/dist/css/dropify.css">

</head>

<body>


    <div class="main-wrapper">

        <!-- Preloader start -->
        <!-- <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
            </div>
        </div> -->
        <!-- Preloader End -->

        <!-- Header Start -->
        <div class="meeta-header-section meeta-header-2 meeta-header-3">

            <!-- Header Middle Start -->
            <div class="header-middle header-sticky">
                <div class="container">

                    <div class="header-wrap">
                        <!-- Header Logo Start -->
                        <div class="header-logo header-logo-3">
                            <a class="logo-black" href="index.php"><img src="assets/images/logo-black.png"  alt="Logo"></a>
                            <a class="logo-white" href="index.php"><img src="assets/images/logo.png" alt="Logo"></a>
                        </div>
                        <!-- Header Logo End -->

                        <!-- Header Navigation Start -->
                        <div class="header-navigation d-none d-lg-block">
                            <ul class="main-menu">
                                <li class="active-menu"><a href="/">Home</a></li>
                                <li><a href="about.php">About</a></li>
                                <li><a href="#">Event Guide</a>
                                    <ul class="sub-menu">
                                        <li><a href="call-for-paper.php">Call For Papers</a></li>    
                                        <li><a href="guidelines.php">Guidelines</a></li>                                  
                                        <li><a href="#" download="" id="paper-template">Paper Template</a></li>                                     
                                    </ul>
                                </li>
                                <!-- <li><a href="our-team.php">Our Team</a></li> -->
                                <li><a href="conference-papers.php">Conference Papers</a></li>
                            </ul>
                        </div>
                        <!-- Header Navigation End -->

                        <!-- Header Meta Start -->
                        <div class="header-meta">

                            <div class="header-btn d-none d-md-block">
                                <a href="certificate.php" class="btn-2">Certificate</a>
                            </div>

                            <!-- Header Toggle Start -->
                            <div class="header-toggle d-lg-none">
                                <button data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </button>
                            </div>
                            <!-- Header Toggle End -->

                        </div>
                        <!-- Header Meta End -->

                    </div>

                </div>
            </div>
            <!-- Header Middle End -->

        </div>
        <!-- Header End -->


        <!-- Offcanvas Start-->
        <div class="offcanvas offcanvas-start" id="offcanvasExample">
            <div class="offcanvas-header">
                <!-- Offcanvas Logo Start -->
                <div class="offcanvas-logo">
                    <a href="index.php"><img src="assets/images/logo.png" alt=""></a>
                </div>
                <!-- Offcanvas Logo End -->
                <button type="button" class="close-btn" data-bs-dismiss="offcanvas"><i class="flaticon-close"></i></button>
            </div>

            <!-- Offcanvas Body Start -->
            <div class="offcanvas-body">
                <div class="offcanvas-menu offcanvas-menu-2">
                <ul class="main-menu">
                    <li class="active-menu"><a href="/">Home</a></li>
                    <li><a href="about.php">About</a></li>
                    <li><a href="#">Event Guide</a>
                        <ul class="sub-menu">
                            <li><a href="call-for-paper.php">Call For Papers</a></li>    
                            <li><a href="guidelines.php">Guidelines</a></li>                                  
                            <li><a href="paper-template.php">Paper Template</a></li>                                  
                        </ul>
                    </li>
                    <li><a href="conference-papers.php">Conference Papers</a></li>
                </ul>
                </div>
            </div>
            <!-- Offcanvas Body End -->
        </div>
        <!-- Offcanvas End -->