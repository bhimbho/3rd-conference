<!-- MODAL EFFECTS -->
<div class="modal fade" id="modaldemobulk">
        <div class="modal-dialog modal-dialog-centered text-center" role="document">
            <div class="modal-content modal-content-demo">
                <div class="modal-header">
                    <h6 class="modal-title">Edit Content</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                <form method="post" action="logic/bulk-upload.php" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-md-8 offset-md-2 text-center">
                                <input type="file" name="file" class="form-control dropify">
                                <label class="">Paper (.pdf, .doc, .docx)</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Paper Title</label>
                                <input type="text" class="form-control" name="title" value="" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Surname</label>
                                <input type="text" class="form-control" name="surname" value="" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Othernames</label>
                                <input type="text" class="form-control" name="othername" value="" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Institution</label>
                                <input type="text" class="form-control" name="institution" value="" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Authors</label>
                                <textarea class="form-control"name="authors" required>
                                   
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Abstract</label>
                                <textarea class="summernote"  rows="10" name="abstract" required>
                                   
                                </textarea>
                            </div>
                            <div class="form-group">
                               <button type="submit" name="submit" class="btn btn-primary btn-block">Submit</button>
                           </div>
                    </form>
                </div>
            </div>
        </div>
    </div>