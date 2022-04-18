<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Our Team</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Our Team</li>
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
                                            <form action="logic/add_team.php" method="post" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label for="">Speaker's Picture</label>
                                                    <input name="team_img" type="file" class="dropify" data-bs-height="180" required />
                                                </div>
                                                <div class="form-group">
                                                    <label for="">FullName</label>
                                                    <input name="name" type="text" class="form-control" required>
                                                </div>                                      
                                                <div class="form-group">
                                                    <label for="">Title e.g Asst Director</label>
                                                    <input name="type" type="position" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Order</label>
                                                    <select class="form-control" name="order" >
                                                        <option value="">---Select Order ---</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                    </select>
                                                </div>
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
                                                           $team = $team->all_team();
                                                           $count = 0;
                                                           foreach ($team as $team) {?>
                                                        <tr>
                                                            <td><?= ++$count?></td>
                                                            <td><?= $team->team_name?></td>
                                                            <td><img src="../uploads/teams/<?= $team->team_pic?>" width="100" height="100"></td>
                                                            <td><?= $team->team_order?></td>
                                                            <td><a href="logic/delete_team.php?team_id=<?= $team->team_id?>" class="btn btn-danger waves-effect waves-light">Delete</a>
                                                            <a class="modal-effect btn btn-info-light" data-bs-effect="effect-flip-horizontal" data-bs-toggle="modal" href="#modaldemo<?= $team->team_id ?>">Edit</a>
                                                            <?php include 'modals/team-modal.php' ?>
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
                        

                        <!-- sample modal content -->
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Edit Conference Details</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                   
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

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
