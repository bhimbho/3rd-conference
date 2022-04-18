<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
 include('../../classes/autoload.php');
 admin_autoloader_step_two();
 $session = new session();
 $participant = new participant();
 
if(isset($_POST['submit'])){
    $tmpName = $_FILES['participants']['tmp_name'];
    $csvAsArray = array_map('str_getcsv', file($tmpName));
    // var_dump($csvAsArray);
    $count = 0;
    foreach ($csvAsArray as $csv){
        $participant->massive__participant_upload(strtolower($csv[0]), strtolower($csv[1]));
        $count ++;
    }
    echo $count;
    
    
}
?>
<form method="post" enctype="multipart/form-data">
    <input type="file" name="participants">
    <button name="submit">Submit</button>
</form>