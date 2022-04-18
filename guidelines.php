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
                                    <li class="breadcrumb-item active" aria-current="page">Guidelines</li>
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
        <div class="meeta-about-section mb-3">
            <div class="container">

                <div class="row gy-5 align-items-center">
                    <div class="col-lg-12">

                            <?= html_entity_decode($guideline->view_guideline()->guideline, ENT_QUOTES) ?>

                    </div>
                   
                </div>

            </div>
        </div>
        <!-- About Section End -->


    </div>

    <?php include 'includes/footer.php'?>