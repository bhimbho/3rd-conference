<?php 

session_start();
include('../../classes/autoload.php');
admin_autoloader_step_two();
$about = new about();
$validate = new validate();

if(isset($_POST['submit'])){
	if($about->update_welcome($validate->text($_POST['welcome']))){
		$_SESSION['success'] = "Welcome Message Updated Successfully";
		header("location: ../welcome.php");
	}
	else{
		$_SESSION['err'] = "Something Went Wrong";
		$_SESSION['old'] = $validate->text($_POST['welcome']);
		header("location: ../welcome.php");
	}
}
// $_SESSION['err'] = "Something Went Wrong";
// header("location: ../welcome.php");


?>