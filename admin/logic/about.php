<?php 
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$about = new about();
	$validate = new validate();
if(isset($_POST['submit'])){
	if($about->update_about($validate->text($_POST['about']))){
		$_SESSION['success'] = "About Updated Successfully";
		header("location: ../about.php");
	}
	else{
		$_SESSION['err'] = "Something Went Wrong";
		$_SESSION['old'] = $validate->text($_POST['about']);
		header("location: ../about.php");
	}
}
		
		
		// $save_data = $journal->add_journal();

?>