<?php include 'includes/header.php' ?>

        <!-- About Section Start -->
        <div class="meeta-about-section section-padding">
            <div class="container">

                <div class="row">
                    <div class="col-lg-4">
                        <form action="#" method="post">
                            <div class="search-field-holder">
                                <input class=" form-control rounded-0" name="search" type="search" placeholder="Search Your Keyword...">
                                <button class="btn btn-warning input-control rounded-0 mt-1" name="send"> <i class="fa fa-search"></i></button>
                            </div>
                        </form>
                        <hr>
                    </div>
                    <div class="col-lg-7">
                    <?php
                                if(isset($_POST['send'])){
                                    $get_new_journals = $journal->search_by_title_author_institution($_POST['search']);
                                }
                                else{
                                    $get_new_journals = $journal->view_approved_papers();
                                }
                        if(!empty($get_new_journals)){
                                foreach ($get_new_journals as $get_new_journals) { ?>
                        <div class="row journal-holder">
                            <!-- <div class="col-md-3">
                                <img src="assets/img/about-1.jpg" class="img-fluid">
                            </div> -->
                            <div class="col-md-12">
                                <p style="font-style: italic"><small><?= $get_new_journals->authors?></small></p>
                                <a href="paper-preview.php?pull=<?= $get_new_journals->new_upload_id?>" class="font-weight-bold h5 mb-3"><?= $get_new_journals->title?></a>
                                <p><?= substr($get_new_journals->abstract, 0, 150).'....' ?></p>
                                <a href="uploads/new_uploads/<?= $get_new_journals->file_name?>" class="btn mt-3 rounded-0" download>Download Paper</a>
                            </div>
                        </div>	
                        <?php } } else{?>
                            <h2>No Content Here</h2>
                        <?php }
                        ?>
                    </div>
                </div>
            </div>
        </div>

    <?php include 'includes/footer.php'?>