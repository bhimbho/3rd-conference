<?php 
session_start();
include 'includes/header.php' 
?>
 <!-- Page Banner Start -->
 <div class="section page-banner-section">
            <div class="container">
                <div class="page-banner-wrap">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Page Banner Content Start -->
                            <div class="page-banner text-center">
                              
                                <!-- <ul class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item active" aria-current="page">Register/Submit Paper</li>
                                </ul> -->
                            </div>
                            <!-- Page Banner Content End -->
                        
        <!-- Page Banner End -->
    <div class="meeta-about-section section-padding mt-0">
        <div class="container" >
            <div class="row">
            <h2 class="title d-flex justify-content-center">- Paper Submission -</h2>
                <div class="card"  style="background-image: url(assets/images/shape/ab-shape-1.png); background-position: center; background-repeat:no-repeat">
                <div class="card-body">
                <div class="col-md-8 offset-2 col-lg-8">
                    <form id='' action="includes/add_journal.php" method="post" enctype="multipart/form-data">
					<div class="row">
                        <ul style="color:brown; list-style:circle !important">
                            <li><b>Field Marked <span class="text-danger">*</span> are important</b></li>
                            <li><b>In order for co-authors to get Conference certificate, do the following</b> 
                                <li>* Register below without uploading a paper</li>
                                <li>* Leave the Abstract, Author and Paper title field blank</li>
                                <li>* or ask to be registered by conference administrator</li>
                            </li>
                            <li><b>Upload only PDF or Word Documents (.pdf, .doc, .docx)</b></li>
                        </ul>
                        <?php include 'admin/includes/error.php' ?>
                        <div class="col-md-12 mb-5 form-group">
							<input type="file" name="file" class="rounded-0 file dropify" data-allowed-file-extensions="pdf doc docx">
						</div>
						<div class="col-md-6 form-group mb-2">
                            <label for="">Surname <span class="text-danger">*</span></label>
                            <input type="text" name="surname" class="form-control rounded-0" required>
						</div>
						<div class="col-md-6 mb-2">
                            <label for="">Othername <span class="text-danger">*</span></label>
                            <input type="text" name="lastname" class="form-control rounded-0" required>
						</div>
						<div class="col-md-6 form-group mb-2">
                            <label for="">Institution</label>
                            <input type="text" name="institution" class="form-control rounded-0" required>
						</div>
						<div class="col-md-6 form-group mb-2">
                            <label for="">Paper Title</label>
                            <input type="text" name="title" class="form-control rounded-0" placeholder="Paper Title">
						</div>
						<div class="col-md-6 form-group mb-2">
                            <label for="">Email</label>
							<input type="email" name="email" class="form-control rounded-0" placeholder="mail@mail.com">
						</div>
						<div class="col-md-6 form-group mb-2">
                            <label for="">Mobile Number</label>
							<input type="text" name="phone" class="form-control rounded-0" placeholder="+234">
						</div>
						<div class="col-md-6 mb-2 form-group">
                            <label for="">Pages (eg. 50)</label>
                            <input type="text" name="page_no" class="form-control rounded-0">
						</div>
						<div class="col-md-12 mb-3">
							<label for="">Authors <span class="text-danger">*</span></label>
							<textarea class="form-control rounded-0" rows="8" style="resize: none" name="authors"></textarea>
						</div>
						<div class="col-md-12 mb-3">
                            <label for="">Abstract <span class="text-danger">*</span></label>
							<textarea class="form-control rounded-0" name="abstract" rows="8" style="resize: none" ></textarea>
						</div>
					</div>
					<div class="btn-form-cover">
						<button id="#submit" type="submit" name="submit" class="btn btn-success rounded-0">Submit Paper</button>
					</div>
                    </form>
                </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    </div>
                    </div>
                </div>
            </div>
        </div>
<?php include 'includes/footer.php' ?>