<?php 
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$journal = new journal();
	$validate = new validate();
	if(isset($_POST['submit'])){
		$arr_data = [];
		foreach ($_POST as $post => $val) {
			array_push($arr_data,$journal->text_val($val));
		}


			if($journal->add_co_author($arr_data[0],$arr_data[1],$arr_data[2])){
				$_SESSION['success'] = "Co-Author Added Successfully";
				header("location: ../manual-upload-papers.php");
			}
			else{
				$_SESSION['err'] = "Something Went Wrong";
				header("location: ../manual-upload-papers.php");
			}
	
		
		// $save_data = $journal->add_journal();
	}

?>