<!-- MODAL EFFECTS -->
<div class="modal fade" id="modaldemo<?= $team->team_id ?>">
        <div class="modal-dialog modal-dialog-centered text-center" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header">
                    <h6 class="modal-title">Edit Content</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                <form method="post" action="logic/update-team.php" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-md-8 offset-md-2 text-center">
                                <input type="file" name="team_img" class="form-control dropify" data-default-file="../uploads/teams/<?= $team->team_pic ?>">
                                <label class="">Passport</label>
                                </div>
                            </div>
                            <input type="hidden" name="team_id" value="<?= $team->team_id ?>">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Team Full Name</label>
                                <input type="text" class="form-control" name="fname" value="<?= $team->team_name ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Title</label>
                                <input type="text" class="form-control" name="title" value="<?= $team->team_pos ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Order</label>
                                <select class="form-control" name="order">
                                    <option value="<?= $team->team_order ?>"><?= $team->team_order ?></option>
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
                            <input type="hidden" name="pic" value="<?= $team->team_pic ?>">
                            <div class="form-group">
                               <button type="submit" name="submit" class="btn btn-primary btn-block">Update Team Profile</button>
                           </div>
                    </form>
                </div>
                <!-- <div class="modal-footer">
                    <button class="btn btn-primary">Save changes</button> <button class="btn btn-light" data-bs-dismiss="modal">Close</button>
                </div> -->
            </div>
        </div>
    </div>