<?php
 include('../../classes/autoload.php');
 admin_autoloader_step_two();
 $session = new session();
 $conference = new conference();
if(isset($_POST['submit'])){
    $theme = $conference->text_val($_POST['theme']);
    $subtheme = $conference->text_val($_POST['subtheme']);
    $date = $conference->text_val($_POST['date']);
    $response= $conference->add_conference($theme, $subtheme,$date);
    
    switch ($response) {
        case 0:
                $session->set_session('err', "Details was not added <strong> Try Again!</strong>");
                header('location: ../conference.php');
                break;
        case 1:
                $session->set_session('success', "Conference Added!");
                header('location: ../conference.php');
                break;
        default:
                $session->set_session('err', "Something went wrong");
                header('location: ../conference.php');
                break;
    }
}
?>