<?php 
session_start();
	include('../../classes/autoload.php');
	admin_autoloader_step_two();
	$team = new ourteam();
	$validate = new validate();
    
	if(isset($_POST['submit'])){
		$arr_data = [];
		foreach ($_POST as $post => $val) {
			array_push($arr_data,$validate->text($val));
		}

		if($_FILES['team_img']['name'] === ''){
            $pic = $arr_data[4];
        }
        else{
            $pic = $validate->fileUploadValidateDoc('../../uploads/teams/','team_img', 'image');
            if ($pic == 0) {
                $_SESSION['err'] = "Image was not uploaded. Type might not be supported";
                header("location: ../our-team.php");
            } 
        }

        if($team->update_team($arr_data[0], $arr_data[1], $arr_data[2], $arr_data[3], $pic)){
            $_SESSION['success'] = "Team Profile Updated";
            header("location: ../our-team.php");
        }
        else{
            $_SESSION['err'] = "Something Went Wrong";
            header("location: ../our-team.php");
        }
		
	}

?>