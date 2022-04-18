<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Uploaded Paper</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Uploaded Paper</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- ROW-1 -->
                        <div class="row">
                            <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table  mb-0 wrap" id="basic-datatable">
                                                    <thead>
                                                        <tr>
                                                            <th>S/N</th>
                                                            <th>Uploader</th>
                                                            <th>Paper Title</th> 
                                                            <th>Author</th>
                                                            <th>Institution</th>
                                                            
                                                            <th>Paper Pages</th>
                                                            <th>Date</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <?php
                                                            $paper = $paper->view_all_journals();
                                                            $count = 0;
                                                            foreach ($paper as $paper) {?>
                                                        <tr>
                                                            <td><?= ++$count?></td>
                                                            <td><?= $paper->firstname.' '.$paper->lastname?></td>
                                                            <td><?= $paper->title?></td>
                                                            <td><?= $paper->authors?></td>
                                                            <td><?= $paper->institution?></td>
                                                            <td><?= $paper->authors?></td>
                                                            <td><?= $paper->upload_date?></td>
                                                            <td><a href="view-paper.php?paper_id=<?= $paper->journal_id?>" class="btn btn-primary waves-effect waves-light">View</a> 
                                                                <a href="delete-paper.php?paper_id=<?= $paper->journal_id?>" class="btn btn-danger waves-effect waves-light">Delete</a>
                                                                <a href="" class="btn btn-primary waves-effect waves-light">Update</a>
                                                            </td>
                                                        </tr>
                                                    <?php }?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <!-- ROW-1 END -->

<?php include('includes/footer.php')?>
<!-- DATA TABLE JS-->
    <script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
    <script src="assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
    <script src="assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
    <script src="assets/plugins/datatable/js/buttons.bootstrap5.min.js"></script>
    <script src="assets/plugins/datatable/js/jszip.min.js"></script>
    <script src="assets/plugins/datatable/pdfmake/pdfmake.min.js"></script>
    <script src="assets/plugins/datatable/pdfmake/vfs_fonts.js"></script>
    <script src="assets/plugins/datatable/js/buttons.html5.min.js"></script>
    <script src="assets/plugins/datatable/js/buttons.print.min.js"></script>
    <script src="assets/plugins/datatable/js/buttons.colVis.min.js"></script>
    <script src="assets/plugins/datatable/dataTables.responsive.min.js"></script>
    <script src="assets/plugins/datatable/responsive.bootstrap5.min.js"></script>
    <script src="assets/js/table-data.js"></script>
