<?php include 'includes/header.php' ?>
<!-- Speaker Single Start -->
<div class="meeta-speaker-single section-padding">
            <div class="container">
                <div class="meeta-speaker-single-wrap">
                    <div class="row">

                        <div class="col-lg-4">
                            <?php
                                $speaker = $speakers->view_speaker($_GET['name']);
                            ?>
                            <!-- Speaker Image Box Start -->
                            <div class="speaker-image-box text-center">
                                <div class="speaker-image">
                                    <img src="uploads/speakers_picture/<?= $speaker->picture ?>" alt="<?= $speaker->name?>">
                                </div>
                                <div class="speaker-content">
                                    <h3 class="speaker-name"><?= $speaker->name?></h3>
                                    <p class="speaker-designation"><?= $speaker->type?></p>
                                    <div class="speaker-social">
                                        <ul>
                                            <li><a class="share-facebook" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a class="share-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                                            <li><a class="share-pinterest" href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Speaker Image Box End -->
                        </div>
                        <div class="col-lg-8">
                            <!-- Speaker Single Right Start -->
                            <div class="speaker-single-right">
                                <!-- Speaker Single Info Start -->
                                <div class="speaker-single-info-wrap">

                                    <div class="speaker-biography">
                                        <h3 class="main-title">Biography/Profile</h3>
                                    </div>
                                    <div class="speaker-info">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="speaker-info-desc">
                                                    <?= html_entity_decode($speaker->profile, ENT_QUOTES) ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</div>
                                <!-- Speaker Single Info End -->
                                <?php include 'includes/footer.php' ?>