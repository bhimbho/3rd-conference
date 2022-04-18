<?php include 'includes/header.php' ?>

        <!-- Page Banner Start -->
        <div class="section page-banner-section">
            <div class="container">
                <div class="page-banner-wrap">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Page Banner Content Start -->
                            <div class="page-banner text-center">
                                <!-- <h2 class="title">About Event</h2> -->
                                <ul class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item active" aria-current="page">About Event</li>
                                </ul>
                            </div>
                            <!-- Page Banner Content End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Banner End -->

        <!-- About Section Start -->
        <div class="meeta-about-section section-padding">
            <div class="container">

                <div class="row align-items-center about-section-margin">
                    <div class="col-lg-7">

                        <!-- About Images Start -->
                        <!-- <div class="meeta-about-images" style="background-image: url(assets/images/shape/shape-4.png);">
                            <div class="image">
                                <img src="assets/images/about-1.jpg" alt="About">
                            </div>
                        </div> -->
                        <!-- About Images End -->

                    </div>
                
                <div class="col-lg-5">
                     <!-- Section Title Start -->
                     <div class="meeta-section-title-2 meeta-about-title">
                            <h4 class="sub-title">The International Conference</h4>
                            <h2 class="main-title">of The Federal Polytechnic Ilaro</h2>
                        </div>
                        <!-- Section Title End -->
                </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                       

                        <!-- About Content Start -->
                        <div class="meeta-about-content">
                            <div class="meeta-about-images" style="background-image: url(assets/images/shape/shape-4.png);">
                                <div class="image">
                                    <img src="assets/images/about-1.jpg" alt="About" style="float: left; margin-right:20px;">
                                    <h2><strong>The Chairman</strong></h2><hr>
                                </div>
                            </div>
                            <div class="text-justify" style="margin-top: -60px;"><?= html_entity_decode($about->view_about()->about, ENT_QUOTES) ?></div>
                            

                        </div>
                        <!-- About Content End -->

                    </div>
                </div>

            </div>
        </div>
        <!-- About Section End -->

        <!-- Speakers Start -->
        <div class="meeta-speakers">
            <div class="container">

                <div class="row gy-5 meeta-speakers-row">
                <?php 
				$team = $team->all_team();
				foreach ($team as $team) {?>
                    <div class="col-lg-3 col-sm-6">
                        <!-- Single Speakers Start -->
                        <div class="single-speaker">
                            <div class="speaker-image">
                                <a href="#"><img src="uploads/teams/<?= $team->team_pic ?>" alt="<?= $team->team_name ?>"></a>
                            </div>
                            <div class="speaker-content">
                                <div class="speaker-content-box">
                                    <h4 class="speaker-name"><a href="#"><?= $team->team_name ?></a></h4>
                                    <p class="speaker-designation"><?= $team->team_pos ?></p>
                                </div>
                                <img class="speaker-shape-1" src="assets/images/shape/shape-8.png" alt="">
                                <div class="speaker-shape-2"></div>
                            </div>
                        </div>
                        <!-- Single Speakers End -->
                    </div>
                    <?php }?>
                   
                </div>

            </div>
        </div>
        <!-- Speakers End -->

    </div>
        <!-- Features Section Start -->
        <div class="meeta-features-section section-padding">
            <div class="shape-1" data-aos-delay="700" data-aos="zoom-in"></div>
            <img class="shape-2" src="assets/images/shape/shape-11.png" alt="">
            <div class="container">
                <div class="meeta-features-wrap">
                    <div class="row">
                        <div class="col-lg-4">
                            <!-- Section Title Start -->
                            <div class="meeta-section-title-2">
                                <h4 class="sub-title">Reason to join conference</h4>
                                <h2 class="main-title">Why attend conference</h2>
                            </div>
                            <!-- Section Title End -->
                            <!-- Features Item Start -->
                            <div class="feature-item feature-1">
                                <div class="feature-icon">
                                    <img src="assets/images/feature-icon-1.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h3 class="title"><a href="#">Develop your Network</a></h3>
                                    <p>The Conference will present you with the perfect opportunity to expand your network and find potential new leads, mentors, and collaborators. </p>
                                </div>
                            </div>
                            <!-- Features Item End -->
                        </div>
                        <div class="col-lg-4">
                            <!-- Features Item Start -->
                            <div class="feature-item feature-2">
                                <div class="feature-icon">
                                    <img src="assets/images/feature-icon-2.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h3 class="title"><a href="#">Meet Seasoned Experts</a></h3>
                                    <p>The Conference will expose you to the wealth of knowledge from our carefully selected presenters both within and outside the country who are vast in the subject area to share from their research exposure in the subject area.</p>
                                </div>
                            </div>
                            <!-- Features Item End -->
                            <!-- Features Item Start -->
                            <div class="feature-item feature-3">
                                <div class="feature-icon">
                                    <img src="assets/images/feature-icon-3.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h3 class="title"><a href="#">Expand Knowledge</a></h3>
                                    <p>You will learn from thought-leaders that you may not have previously heard of. The Conference would give you the opportunity to talk to these people about what they are working on, and they may even give you advice on how to enhance your own work. You have opportunity to ask presenters questions about their work.</p>
                                </div>
                            </div>
                            <!-- Features Item End -->
                        </div>
                        <div class="col-lg-4">
                            <!-- Features Item Start -->
                            <div class="feature-item feature-4">
                                <div class="feature-icon">
                                    <img src="assets/images/feature-icon-4.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h3 class="title"><a href="#">Learn beyond your field of Interest</a></h3>
                                    <p>Different technical sessions would be provided, and you can participate in any of them based on interest to learn and unlearn within and outside your field of interest</p>
                                </div>
                            </div>
                            <!-- Features Item End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features Section End -->

        <!-- Event Sponsors Start -->
        <div class="meeta-event-sponsors-2 section-padding" style="background-image: url(assets/images/bg/sponsor-bg-2.jpg);">
            <div class="container">

                <!-- Section Title Start -->
                <div class="meeta-section-title-2 text-center">
                    <h2 class="main-title">Event Sponsors</h2>
                </div>
                <!-- Section Title End -->

                <!-- Sponsor Active Start -->
                <div class="meeta-sponsor-active">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="meeta-sponsor-logo">
                                    <img src="assets/images/sponsors-5.png" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="meeta-sponsor-logo">
                                    <img src="assets/images/sponsors-6.png" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="meeta-sponsor-logo">
                                    <img src="assets/images/sponsors-7.png" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="meeta-sponsor-logo">
                                    <img src="assets/images/sponsors-8.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sponsor Active End -->

            </div>
        </div>
        <!-- Event Sponsors End -->


    </div>

    <?php include 'includes/footer.php'?>