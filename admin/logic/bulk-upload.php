<?php
// ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$journal = new journal();
	$validate = new validate();
	if(isset($_POST['submit'])){
		$surname = $_POST['surname'];
		$othername = $_POST['othername'];
		$title = $_POST['title'];
		$abstract = $_POST['abstract'];
		$authors = $_POST['authors'];
		$institution = $_POST['institution'];
		$email= "";
		$phone="";
		$pages=0;
		// $obj = json_decode(json_encode($arr_data), true);
		// $obj->fname;
		// var_dump($arr_data);
		if(empty(trim($_POST['title'])) || empty(trim($_POST['abstract']))){
		    if($journal->add_participant($arr_data[1],$arr_data[0])){
    				$_SESSION['success'] = "Registration as Participant Complete";
    				header("location: ../manual-upload-papers.php");
    		}
    		else{
    			$_SESSION['err'] = "Details not registered";
    			header("location: ../manual-upload-papers.php");
    		}
		}
		else{
    		$file_upload = $validate->fileUploadValidateDoc('../../uploads/new_uploads/','file');
    		if($file_upload != 0){
    			if($journal->update_bulk($title,$abstract,$file_upload,$pages,$authors,$surname,$othername,$email,$phone,$institution)){
    				$_SESSION['success'] = "Added";
    				header("location: ../manual-upload-papers.php");
    			}
    			// else{
    			// 	$_SESSION['err'] = "Something Went Wrong";
    			// 	header("location: ../register.php");
    			// }
    		}
    		else{
    			$_SESSION['err'] = "File is incompatible for upload";
    			header("location: ../manual-upload-papers.php");
    		}
		}
		
		// $save_data = $journal->add_journal();
	}

?>