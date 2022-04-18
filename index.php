<?php include('includes/header.php') ?>

        <!-- Slider Section Start  -->
        <div class="meeta-hero-section-3 d-flex align-items-center" style="background-image: url(assets/images/hero-3.jpg);">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <!-- Countdown Start -->
                        <div class="meeta-countdown-wrap">
                            <div class="meeta-countdown-date">
                                <h3 class="number">16</h3>
                                <span>August</span>
                            </div>
                            <div class="meeta-countdown-3 countdown" data-countdown="2022/08/16" data-format="short">
                                <div class="single-countdown">
                                    <span class="count countdown__time daysLeft"></span>
                                    <span class="value countdown__time daysText"></span>
                                </div>
                                <div class="single-countdown countdown-2">
                                    <span class="count countdown__time hoursLeft"></span>
                                    <span class="value countdown__time hoursText"></span>
                                </div>
                                <div class="single-countdown countdown-3">
                                    <span class="count countdown__time minsLeft"></span>
                                    <span class="value countdown__time minsText"></span>
                                </div>
                                <div class="single-countdown countdown-4">
                                    <span class="count countdown__time secsLeft"></span>
                                    <span class="value countdown__time secsText"></span>
                                </div>
                            </div>
                        </div>
                        <!-- Countdown End -->
                    </div>
                    <div class="col-lg-6">
                        <div class="meeta-hero-content">
                            <h3 class="text" data-aos-delay="700" data-aos="fade-up"><?= $conference->conference_slider()->date ?>, Virtual</h3>
                            <h2 class="title" data-aos-delay="800" data-aos="fade-up"><?= $conference->conference_slider()->theme ?></h2>
                            <h3 class="text" data-aos-delay="700" data-aos="fade-up">3rd International Conference</h3>
                            <div class="hero-btn" data-aos-delay="900" data-aos="fade-up">
                                <a class="btn-2" href="event-manager.php">Submit Paper</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Slider Section End -->

        <!-- About Section Start -->
        <div class="meeta-about-section-3 section-padding">
            <div class="container">

                <div class="row align-items-center">
                    <div class="col-lg-6">

                        <!-- About Images Start -->
                        <div class="about-images-3-wrap">
                            <div class="shape-1">
                                <img src="assets/images/shape/ab-shape-1.png" alt="">
                            </div>

                            <div class="about-img-big">
                                <img src="assets/images/about-3.jpg" alt="">
                                <div class="shape-2">
                                    <img src="assets/images/shape/ab-shape-2.png" alt="">
                                </div>
                            </div>
                            <div class="about-img-small">
                                <div class="image-1">
                                    <img src="assets/images/about-4.jpg" alt="">
                                </div>
                                <div class="image-2">
                                    <img src="assets/images/about-5.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <!-- About Images End -->

                    </div>
                    <div class="col-lg-6">
                        <div class="about-content-3-wrap">
                            <!-- Section Title Start -->
                            <div class="meeta-section-title-2">
                                <h2 class="main-title">About the 3rd International Conference</h2>
                            </div>
                            <!-- Section Title End -->

                            <!-- About Content Start -->
                            <div class="about-content-3">

                                <p><?php
                                        $welcome = substr(html_entity_decode($about->view_welcome()->welcome, ENT_QUOTES),0,800);
                                        echo $welcome.'...';
                                    ?>
                                 </p>

                                <a class="btn btn-warning" href="about.php">Continue Reading</a>
                                <a class="btn btn-info" href="event-manager.php">Register</a>

                            </div>
                            <!-- About Content End -->
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <!-- About Section End -->
        <!-- Speakers Start -->
        <div class="meeta-speakers-3 section-padding" style="background-image: url(assets/images/bg/speaker-3-bg.jpg);">
            <div class="container">
                <div class="meeta-speakers-wrap">
                    <!-- Section Title Start -->
                    <div class="meeta-section-title-2 section-title-3 text-center">
                        <h4 class="sub-title text-white">Who's Speaking</h4>
                        <h2 class="main-title text-white">Conference Speakers</h2>
                    </div>
                    <!-- Section Title End -->
                    <div class="meeta-speakers-content-wrap">
                        <div class="row">
                        <?php
                            $speaker = $speakers->all_speakers_limit();
                            $disable_count = 0;
                            foreach ($speaker as $speaker) {
                                $disable_count++; ?>
                            <div class="col-lg-3">
                                <!-- Single Speaker Start -->
                                <div class="single-speker-3">
                                    <div class="speker-img">
                                        <a href="speaker-single.php?name=<?= $speaker->name?>"><img src="uploads/speakers_picture/<?= $speaker->picture ?>" alt="<?= $speaker->name ?>"></a>
                                        <div class="speker-content text-center">
                                            <h3 class="name"><?= $speaker->name ?></h3>
                                            <span class="designation"><?= $speaker->type ?></span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Speaker End -->
                            </div>
                            <?php }?>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Speakers End -->
        <!-- Video Section Start -->
        <div class="meeta-video-section section-padding">
            <div class="container">
                <div class="meeta-video-wrap">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <!-- Video Content Start -->
                            <div class="meeta-video-content">
                                <h3 class="main-title">3rd international conference event</h3>
                                <div class="video-info">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="video-info-item">
                                                <i class="far fa-clock"></i>
                                                <h4 class="title">When Will It Start?</h4>
                                                <p><?= $conference->conference_slider()->date ?></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="video-info-item">
                                                <i class="fas fa-map-marker-alt"></i>
                                                <h4 class="title">What location?</h4>
                                                <p>Remote (Virtual via Zoom)</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Video Content End -->
                        </div>
                        <div class="col-lg-6">
                            <!-- Video Image Start -->
                            <div class="meeta-video-img text-center" style="background-image: url(assets/images/video-1.jpg);">
                                <a class="popup-video" href="https://www.youtube-nocookie.com/embed/EF1a9ppi9qk"><i class="fas fa-play"></i></a>
                            </div>
                            <!-- Video Image End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Video Section End -->


        <!-- Event Sponsors Start -->
        <div class="meeta-event-sponsors-3 section-padding">
            <div class="container">

                <!-- Section Title Start -->
                <div class="meeta-section-title-2 section-title-3 text-center">
                    <h2 class="main-title">Our Offcial Partners</h2>
                </div>
                <!-- Section Title End -->

                <!-- Sponsor Start -->
                <div class="meeta-sponsor-wrap">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-5.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-6.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-7.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-8.png" alt=""></a>
                            </div>
                        </div>
                        <!-- <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-9.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-10.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-11.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="meeta-sponsor-logo">
                                <a href="#"><img src="assets/images/sponsors-12.png" alt=""></a>
                            </div>
                        </div> -->
                    </div>
                </div>
                <!-- Sponsor End -->

            </div>
        </div>
        <!-- Event Sponsors End -->

        <!-- Pricing Start -->
        <div class="meeta-pricing-2 meeta-pricing-3 section-padding">


            <div class="container">

                <!-- Section Title Start -->
                <div class="meeta-section-title-2 section-title-3 text-center">
                    <h4 class="sub-title">Bank Details</h4>
                    <h2 class="main-title">Get Your Access Now</h2>
                </div>
                <!-- Section Title End -->

                <div class="row gy-5 justify-content-center meeta-pricing-row">
                    <div class="col-lg-4 col-md-8">

                        <!-- Single Pricing Start -->
                        <div class="single-pricing">
                            <div class="pricing-header">
                                <h3 class="price_title">Local Pass</h3>
                                <div class="price">
                                    <span><sup>N</sup>8500</span>
                                </div>
                            </div>
                            <div class="pricing-body">
                                <ul>
                                    <li>United Bank of Africa (UBA)</li>
                                    <li class="text-danger"><strong>International Conference, Federal Poly Ilaro</strong></li>
                                    <li>1021398446</li>
                                </ul>
                            </div>
                        </div>
                        <!-- Single Pricing End -->

                    </div>
                    
                    <div class="col-lg-4 col-md-8">

                        <!-- Single Pricing Start -->
                        <div class="single-pricing">
                            <div class="pricing-header">
                                <h3 class="price_title">International Pass</h3>
                                <div class="price">
                                    <span><sup>$</sup>50</span>
                                </div>
                            </div>
                            <div class="pricing-body">
                                <ul>
                                <li>United Bank of Africa (UBA)</li>
                                    <li class="text-danger"><strong>International Conference, Federal Poly Ilaro</strong></li>
                                    <li>1021398446</li>
                                </ul>
                            </div>
                        </div>
                        <!-- Single Pricing End -->

                    </div>
                </div>
            </div>
        </div>
        <!-- Pricing End -->

        <!-- Conference Start -->
        <div class="meeta-conference section-padding">
            <div class="container">
                <!-- Section Title Start -->
                <div class="meeta-section-title-2 section-title-3 text-center">
                    <!-- <h4 class="sub-title">Schedule of Events</h4> -->
                    <h2 class="main-title">Important Dates</h2>
                </div>
                <!-- Section Title End -->
                <div class="meeta-conference-wrap">
                    <div class="row">
                        <div class="col-lg-3 col-md-4">
                            <!-- Single Item Start -->
                            <div class="single-item">
                                <div class="conference-content text-center">
                                    <span class="meta"><i class="fas fa-calendar-alt"></i>June 20, 2022 </span>
                                    <h3 class="title"><a href="#">Full Paper and Submission Deadline</a></h3>
                                </div>
                            </div>
                            <!-- Single Item End -->
                        </div>
                        <div class="col-lg-3 col-md-4">
                            <!-- Single Item Start -->
                            <div class="single-item">
                                <div class="conference-content text-center">
                                    <span class="meta"><i class="fas fa-calendar-alt"></i>July 3, 2022</span>
                                    <h3 class="title"><a href="#">Notification of Acceptance</a></h3>
                                </div>
                            </div>
                            <!-- Single Item End -->
                        </div>
                        <div class="col-lg-3 col-md-4">
                            <!-- Single Item Start -->
                            <div class="single-item">
                                <div class="conference-content text-center">
                                    <span class="meta"><i class="fas fa-calendar-alt"></i>July 15, 20202 </span>
                                    <h3 class="title"><a href="#">Deadline for Camera-Ready Paper</a></h3>
                                </div>
                            </div>
                            <!-- Single Item End -->
                        </div>
                        <div class="col-lg-3 col-md-4">
                            <!-- Single Item Start -->
                            <div class="single-item">
                                <div class="conference-content text-center">
                                    <span class="meta"><i class="fas fa-calendar-alt"></i>August 16-17, 2022 </span>
                                    <h3 class="title"><a href="#">Conference Dates</a></h3>
                                </div>
                            </div>
                            <!-- Single Item End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Conference End -->


    </div>

    <!-- Footer Start -->
    <div class="meeta-footer-section meeta-footer-3">

        <!-- Footer Widget Start -->
        <div class="footer-wrap">
            <div class="container">

                <div class="footer-widget-wrap">
                    <div class="row">

                        <div class="col-lg-4 col-md-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="widget-title">Organized By</h4>
                                <a class="footer-logo" href="index.php"><img src="assets/images/logo.png" alt="Logo"></a>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="widget-title">Schedule of Events</h4>
                                <div class="widget-text">
                                    <span class="date"><?= $conference->conference_slider()->date ?></span>
                                    <p>Virtual via Zoom</p>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="widget-title">Contact Us</h4>
                                <div class="widget-info">
                                    <ul>
                                        <li>
                                            <div class="info-icon">
                                                <i class="flaticon-phone-call"></i>
                                            </div>
                                            <div class="info-text">
                                                <span><a href="#">+2348033894973,
                                                    +234 803 713 3216,
                                                    +234 805 353 4214,
                                                    +234 803 410 3100
                                                </a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-icon">
                                                <i class="far fa-envelope-open"></i>
                                            </div>
                                            <div class="info-text">
                                                <span><a href="#">fpi3rdinterconf@federalpolyilaro.edu.ng</a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-icon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <div class="info-text">
                                                <span>The Federal Polyhtechnic Ilaro</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        
                    </div>
                </div>

            </div>

            <div class="footer-copyright text-center">
                <div class="container">
                    <div class="copyright-text">
                        <p>2022 Copyright The Federal Polyhtechnic Ilaro. All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Widget End -->

    </div>
    <!-- Footer End -->

    <!-- back to top start -->
    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <!-- back to top end -->




    <!-- JS
    ============================================ -->

    <!-- Modernizer & jQuery JS -->
    <script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>


    <!-- Bootstrap JS -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/back-to-top.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/aos.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>


    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

</body>


<!-- Mirrored from thepixelcurve.com/html/meeta/meeta/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 27 Mar 2022 11:41:12 GMT -->
</html>