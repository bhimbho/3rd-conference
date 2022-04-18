<?php
 include('../../classes/autoload.php');
 admin_autoloader_step_two();
 $session = new session();
 $participant = new participant();
if(isset($_GET['participant_id'])){
    $part_id = $participant->Validate($_GET['participant_id']);
    $verify_count= $participant->delete_participant($part_id);
    //echo $admin_verify_status = count($admin_verify_count);
    // var_dump($admin_verify_count[0]['admin_id']);
    switch ($verify_count) {
        case 0:
                $session->set_session('err', "<strong> Try Again!</strong>");
                header('location: ../add_co_author.php');
                break;
        case 1:
                $session->set_session('success', "Participant Deleted!");
                header('location: ../add_co_author.php');
                break;
        default:
                $session->set_session('err', "Something went wrong");
                header('location: ../add_co_author.php');
                break;
    }
}
?>