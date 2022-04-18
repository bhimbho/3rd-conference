<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Welcome Message</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- ROW-1 -->
                        <div class="row">
                            <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <?php include 'includes/error.php' ?>
                                            <form action="logic/add_speaker.php" method="post" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label for="">Speaker's Picture</label>
                                                    <input name="speaker_img" type="file" class="dropify" data-bs-default-file="assets/images/media/1.jpg" data-bs-height="180" required />
                                                </div>
                                                <div class="form-group">
                                                    <label for="">FullName</label>
                                                    <input name="name" type="text" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="">Speaker's Insitution</label>
                                                    <input name="institution" type="text" class="form-control" required>
                                                </div>                                            
                                                <div class="form-group">
                                                    <label for="">Speaker as</label>
                                                    <input name="type" type="text" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="">Order</label>
                                                    <input name="order" type="number" class="form-control" required>
                                                </div>
                                                <textarea id="summernote"  rows="10" name="profile" required>
                                                </textarea>
                                                <button class="btn btn-info btn-block" name="submit">Save</button>
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
                                                            <th>Speaker's Name</th>
                                                            <th>Speaker's Picture</th>
                                                            <th>Order</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <?php
                                                            $speaker = $speakers->all_speakers();
                                                            $count = 0;
                                                            foreach ($speaker as $speaker) {?>
                                                        <tr>
                                                            <td><?= ++$count?></td>
                                                            <td><?= $speaker->name?></td>
                                                            <td><img src="../uploads/speakers_picture/<?= $speaker->picture?>" width="100" height="100"></td>
                                                            <td><?= $speaker->speaker_order?></td>
                                                            <td><a href="logic/delete_speaker.php?speaker_id=<?= $speaker->speaker_id ?>" class="btn btn-danger waves-effect waves-light">Delete</a>
                                                                <a class="modal-effect btn btn-info-light" data-bs-effect="effect-flip-horizontal" data-bs-toggle="modal" href="#modaldemo<?= $speaker->speaker_id ?>">Edit</a>
                                                                <?php include 'modals/speaker-modal.php' ?>
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
<script>
    $('.summernote').summernote({
        height: 200
    });
</script>