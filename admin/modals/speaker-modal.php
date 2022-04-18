<!-- MODAL EFFECTS -->
<div class="modal fade" id="modaldemo<?= $speaker->speaker_id ?>">
        <div class="modal-dialog modal-dialog-centered text-center" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header">
                    <h6 class="modal-title">Edit Content</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                <form method="post" action="logic/update-speaker.php" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-md-8 offset-md-2 text-center">
                                <input type="file" name="speaker_img" class="form-control dropify" data-default-file="../uploads/speakers_picture/<?= $speaker->picture ?>">
                                <label class="">Passport</label>
                                </div>
                            </div>
                            <input type="hidden" name="team_id" value="<?= $speaker->speaker_id ?>">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Speaker's Name</label>
                                <input type="text" class="form-control" name="name" value="<?= $speaker->name?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Speaker's Type</label>
                                <input type="text" class="form-control" name="type" value="<?= $speaker->type?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Speaker's Institution</label>
                                <input type="text" class="form-control" name="institution" value="<?= $speaker->institution?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Order</label>
                                <select class="form-control" name="order">
                                    <option value="<?= $speaker->speaker_order ?>"><?= $speaker->speaker_order ?></option>
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
                            <div class="form-group">
                                <label for="exampleInputEmail1">Profile</label>
                                <textarea class="summernote"  rows="10" name="profile" required>
                                    <?= $speaker->profile ?>
                                </textarea>
                            </div>
                            <input type="hidden" name="pic" value="<?= $speaker->picture ?>">
                            <div class="form-group">
                               <button type="submit" name="submit" class="btn btn-primary btn-block">Update Speaker's Details</button>
                           </div>
                           <input type="hidden" name="pic" value="<?= $speaker->picture ?>">
                    </form>
                </div>
            </div>
        </div>
    </div>