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
                                    <li class="breadcrumb-item active" aria-current="page">Call for Papers</li>
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
        <div class="meeta-about-section ">
            <div class="container">

                <div class="row gy-5 align-items-center">
                    <div class="col-lg-12">

                            <?= html_entity_decode($callpapers->view_callpapers()->call_papers, ENT_QUOTES) ?>

                    </div>
                   
                </div>

            </div>
        </div>
        <!-- About Section End -->

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