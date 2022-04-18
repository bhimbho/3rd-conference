<?php 
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$speaker = new speakers();
	$validate = new validate();
    
	if(isset($_POST['submit'])){
		$arr_data = [];
		foreach ($_POST as $post => $val) {
			array_push($arr_data,$validate->text($val));
		}

		if($_FILES['speaker_img']['name'] === ''){
            $pic = $arr_data[6];
        }
        else{
            $pic = $validate->fileUploadValidateDoc('../../uploads/speakers_picture/','speaker_img', 'image');
            if ($pic == 0) {
                $_SESSION['err'] = "Image was not uploaded. Type might not be supported";
                header("location: ../speakers.php");
            } 
        }

        if($speaker->update_speaker($arr_data[0], $arr_data[1], $arr_data[2], $arr_data[3], $arr_data[4], $arr_data[5], $pic)){
            $_SESSION['success'] = "Speaker Profile Updated";
            header("location: ../speakers.php");
        }
        else{
            $_SESSION['err'] = "Something Went Wrong";
            header("location: ../speakers.php");
        }
		
	}

?>