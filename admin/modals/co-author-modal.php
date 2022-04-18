<!-- MODAL EFFECTS -->
<div class="modal fade" id="modaldemocoauthor">
        <div class="modal-dialog modal-dialog-centered text-center" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header">
                    <h6 class="modal-title">Add Co-Author</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                <form method="post" action="logic/add_co_author.php">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Surname</label>
                                <input type="text" class="form-control" name="surname" value="" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Othernames</label>
                                <input type="text" class="form-control" name="othername" value="" required>
                            </div>
                             <div class="form-group">
                                <label for="exampleInputEmail1">-- Select Paper Co-Authored --</label>
                                <select class="form-control selectpicker" name="order" required data-live-search="true">
                                    <option value="" selected disabled></option>
                                    <?php  
                                        $all = $paper->view_all_journals();
                                        foreach ($all as $all) {?>
                                            <option value="<?= $all->journal_id?>"><?= $all->title?></option>
                                    <?php 
                                        }?>
                                   
                                </select>
                            </div>
                            <div class="form-group">
                               <button type="submit" name="submit" class="btn btn-primary btn-block">Submit</button>
                           </div>
                    </form>
                </div>
            </div>
        </div>
    </div>