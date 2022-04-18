<?php 
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$participant = new participant();
	$validate = new validate();

			if($participant->update_payment_status($validate->text($_GET['participant_id']))){
				$_SESSION['success'] = "Payment Status Updated";
				header("location: ../participants.php");
			}
			else{
				$_SESSION['err'] = "Something Went Wrong";
				header("location: ../participants.php.php");
			}
		
		// $save_data = $journal->add_journal();

?>