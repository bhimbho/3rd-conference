<?php 
    if(isset($_SESSION['err'])){?>
        <div class="alert alert-danger"><?= $_SESSION['err'] ?></div>
    <?php unset($_SESSION['err']);
    } 
    if(isset($_SESSION['success'])) {?>
        <div class="alert alert-success"><?= $_SESSION['success'] ?></div>
    <?php unset($_SESSION['success']);}
?>