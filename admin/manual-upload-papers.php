<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Update Paper</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Update Paper</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->
                        <a class="modal-effect btn btn-info mb-3" data-bs-effect="effect-flip-horizontal" data-bs-toggle="modal" href="#modaldemobulk">Add Author</a>
                        <?php include 'modals/update-paper-modal.php' ?>
                        <a class="modal-effect btn btn-info mb-3" data-bs-effect="effect-flip-horizontal" data-bs-toggle="modal" href="#modaldemocoauthor">Add Co-Author</a>
                        <?php include 'modals/co-author-modal.php' ?>
                        <!-- ROW-1 -->
                        <div class="row">
                            <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <?php include 'includes/error.php' ?>
                                            <form action="logic/upload-paper.php" method="post" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label for="">Update Paper File/Assignment of Main Authors</label>
                                                    <input name="file" type="file" class="dropify" data-bs-default-file="assets/images/media/1.jpg" data-bs-height="180" required />
                                                </div>
                                                <div class="form-group">
                                                    <label for="">Participant</label>
                                                    <select type="text" class="selectpicker form-control" name="participant" required data-live-search="true">
                                                        <option selected disabled value="">-- Select Participant --</option>
                                                        <?php  
                                                            $all = $paper->view_all_journals();
                                                            foreach ($all as $all) {?>
                                                            
                                                        <option value="<?= $all->participantid?>"><?= $all->firstname.' '.$all->lastname?></option>
                                                    <?php }?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" name="submit" class="btn btn-primary btn-block">Upload & Assign</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                            </div>
                            <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table  mb-0 wrap" id="basic-datatable">
                                                    <thead>
                                                        <tr>
                                                        <th>S/N</th>
                                                        <th>Journal For: </th>
                                                        <th>Authors</th>
                                                        <th>Title</th>
                                                        <th>File</th>
                                                        <th>File</th>
                                                        <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php
                                                                $newjournal = $paper->view_all_new_journals();
                                                                $count = 0;
                                                                foreach ($newjournal as $newjournal) {?>
                                                            <tr>
                                                                <td><?= ++$count?></td>
                                                                <td><?= $newjournal->firstname.' '. $newjournal->lastname?></td>
                                                                <td><?= $newjournal->authors ?></td>
                                                                <td><?= $newjournal->title ?></td>
                                                                <td><a class="badge bg-dark" href="logic/update_publish_status.php?article_id=<?= $newjournal->new_upload_id ?>&status=<?php echo ($newjournal->view_status)? '0':'1';?>" ><?php echo ($newjournal->view_status)? 'UnPublish':'Publish';?></a></td>
                                                                <td><a class="badge bg-primary" href="../uploads/new_uploads/<?= $newjournal->file_name ?>" download>Download</a></td>
                                                                <td><a href="logic/delete_new_paper.php?upload_id=<?= $newjournal->new_upload_id ?>" class="btn btn-danger waves-effect waves-light">Delete</a></td>
                                                                <!--<td><a href="logic/delete_new_paper.php?upload_id=<?= $newjournal->new_upload_id ?>" class="btn btn-danger waves-effect waves-light">Delete</a></td>-->
                                                            </tr>
                                                        <?php } ?>
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
