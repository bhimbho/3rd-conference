<?php include('includes/header.php')?>
            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Welcome Message</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- ROW-1 -->
                        <div class="row">
                        <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include 'includes/error.php' ?>
                                        <form action="logic/welcome.php" method="post">
                                            <textarea id="summernote"  rows="10" name="welcome">
                                                    <?php
                                                        if (isset($_SESSION['old'])){
                                                            echo $_SESSION['old'];
                                                        }
                                                        if ($about->view_welcome()){
                                                            echo $about->view_welcome()->welcome;
                                                        }
                                                    ?>
                                            </textarea>
                                            <button class="btn btn-info" name="submit">Save Message</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ROW-1 END -->

<?php include('includes/footer.php')?>