<?php 
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$journal = new journal();
	$validate = new validate();

			if($journal->update_journal($validate->text($_GET['article_id']),$validate->text($_GET['status']))){
				$_SESSION['success'] = "Publish Status Updated";
				header("location: ../upload-paper.php");
			}
			else{
				$_SESSION['err'] = "Something Went Wrong";
				header("location: ../upload-paper.php");
			}
		
		// $save_data = $journal->add_journal();

?>