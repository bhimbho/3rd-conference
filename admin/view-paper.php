<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">View Paper</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Paper</li>
                                </ol>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                        <div class="row">
                            <div class="col-md-9">                            
                                <?php $journal = $paper->view_specific_journal($paper->Validate($_GET['paper_id']));
                                    if($journal){
                                ?>
                                <h4 class="header-title mb-3">View papers Uploaded by Authors</h4>
                                <h4><?= $journal->title ?></h4>
                                <p><?= $journal->authors ?>, Pages <?= $journal->page_no ?>, Uploaded Date: <?= $journal->upload_date ?></p>
                                <h4>Abstract</h4>
                                <p><?= $journal->abstract ?></p>
                                <p>Submitted by: <?= $journal->firstname.' '.$journal->lastname?></p>
                                <p>Email: <?= $journal->email ?></p>
                                <P>Pages: <span class="text-danger"><?= $journal->page_no ?></span></p>
                            </div>
                            <div class="col-md-3">
                                <div class="card-box">
                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <i class="fe fe-file" style="font-size: 60px; border: 2px solid black; padding:20px 25px; border-radius: 50%;"></i>
                                            <div class="clearfix"></div>
                                            <a href="../uploads/files/<?= $journal->file ?>" download class="btn btn-primary mt-5 btn-block">Download Paper</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php }else{?>
                                <h4>No result found</h4>
                            <?php }?>
                            </div> <!-- container -->
                        </div>
                    </div>