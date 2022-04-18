<?php include 'includes/header.php'; 
?>

        <!-- About Section Start -->
        <div class="meeta-about-section section-padding">
            <div class="container">

                <div class="row">            
                    <div class="col-lg-10 offset-1 ">
                        <h4 class="title-line">Hello! Enter your registered name in the search box</h4>
                        <form method="post" action="">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="text" name="search" class="form-control rounded-0" id="certName" placeholder="Enter your name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <button class="btn btn-info genCert rounded-0" name="submit">Generate Certificate</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        
                        <div>
                            <?php
                                if (isset($_POST['submit'])) {
                                    echo '<h5>Click on your name?</h5>';
                                    $result = $journal->search_certificate(strtolower(htmlspecialchars($_POST['search'])));
                                    // var_dump($result);
                                    foreach ($result as $result) {?>
                            <a href=""><span class="badge bg-danger rounded-0" aria-label="<?= $result->title?>"><?= ucwords($result->firstname.' '.$result->lastname) ?></span></a>
                            <?php 	# code...
                                    }
                                }
                            ?>
                        </div>
                        <div class="col-12 text-center mt-5">
                                <button class="btn btn-info downloadCert mb-3">Download Certificate</button>
                            </div>
                        <div class="row certificate-body">
                            <div class="col-12 cert-holder" id="content">
                                <img src="uploads/certificates/paper-presenter.jpg" class="certificate-image" alt="certificate-image">
                                <img src="assets/img/intl_conference_cert_part1.jpg" class="certificate-image2" alt="certificate-image2">
                                <h2 class="certiticate-name"></h2>
                                <p class="paper-title"></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php include 'includes/footer.php'?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<script>
	$(function(){
		$(".alert-danger").hide();
		$(".certificate-body").hide();
		$(".certificate-body").hide();
		$(".certificate-image").hide();
		$(".downloadCert").hide();
		$("a .badge").click(function(e){
			e.preventDefault();
			var certName = $(this).text();
			var title = $(this).attr('aria-label');
			if(certName == ''){
				$(".alert-danger").show();
			}
			else{
			    $(".certificate-body").show();
                $(".downloadCert").show();
				if($.trim(title) == ""){  
				    $(".certificate-image2").show();
				    $(".certificate-image").hide();
				    $(".certiticate-name").text(certName);
				    $(".paper-title").text('');
				}
				else{
				    $(".certificate-image").show();
				    $(".certificate-image2").hide();
				    $(".certiticate-name").text(certName);
				    $(".paper-title").text(title);
				}
			}
		});

$('.downloadCert').click(function () {
	var doc = new jsPDF('l', 'pt', 'a4');
	var width = doc.internal.pageSize.getWidth();
	var height = doc.internal.pageSize.getHeight();
	var name = $(".certiticate-name").text();
	doc.addHTML(document.getElementById('content'),function() {
    	doc.save(name+' certificate.pdf');
		})
	})
})
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Alex+Brush&display=swap');
.certificate-image{
	position: relative;
	max-width: 100%;
	height: auto;
}
.cert-holder{
    position: relative;
}
.certiticate-name{
	font-family: 'Alex Brush', cursive;
	font-size: 60px;
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 90%;
	text-align: center;
	color: #000 !important;
    z-index: 99999;
}
.paper-title{
	font-size: 20px;
	position: absolute;
	top: 56%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	text-align: center;
	color: #000 !important;
	line-height: 25px;
    font-weight: bold;
    z-index: 99999;
}
.cert-holder{
	width: 100%;
}

.genCert {
    padding: .375rem .75rem;
    height: 37px;
    line-height: 0px;
}
#content{
		background-color: white !important;
	}
	@media print { 
		#content img{
			max-width: 100%;
			max-height: 100%;
		}
}

</style>