<?php 
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$journal = new journal();
	$validate = new validate();

			if($journal->update_journal_title_etc($validate->text($_GET['paper_id']),$validate->text($_POST['title']),$validate->text($_POST['abstract']),$validate->text($_POST['authors']))){
				$_SESSION['success'] = "Paper Updated";
				header("location: ../paper.php");
			}
			else{
				$_SESSION['err'] = "Something Went Wrong";
				header("location: ../paper.php");
			}
		
		// $save_data = $journal->add_journal();

?>