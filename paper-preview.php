<?php include 'includes/header.php'; 
$pull = $journal->view_specific_approved_papers($_GET['pull']);
?>

        <!-- About Section Start -->
        <div class="meeta-about-section section-padding">
            <div class="container">

                <div class="row">            
                    <div class="col-lg-10 offset-1 ">
                        <h4 class="title-line"><?= $pull->title ?></h4>
                        <p><strong><?= $pull->authors ?>, July 2020, Published: <?= $pull->date_upload_created ?></strong></p>
                        <div class="row">
                            <div class="col-md-12">
                                <?= htmlspecialchars_decode($pull->abstract) ?>
                            </div>
                        </div>
                        <a href="conference-papers.php" class="btn btn-warning">Back</a>
                    </div>
                </div>
            </div>
        </div>

    <?php include 'includes/footer.php'?>