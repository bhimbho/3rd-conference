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
                        <div class="col-md-6 offset-3">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include 'includes/error.php' ?>
                                        <form action="logic/conference.php" method="post">
                                            <div class="form-group">
                                                <label for="">Theme</label>
                                                <textarea name="theme" class="form-control"><?php
                                                        if ($conference->all_conference()){
                                                            echo trim($conference->all_conference()->theme);
                                                        }
                                                    ?>
                                                </textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Sub Theme</label>
                                                <textarea name="subtheme" class="form-control"><?php
                                                        if ($conference->all_conference()){
                                                            echo trim($conference->all_conference()->sub_theme);
                                                        }
                                                    ?>
                                                </textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Date</label>
                                                <input name="date" class="form-control" value="<?php
                                                        if ($conference->all_conference()){
                                                            echo trim($conference->all_conference()->date);
                                                        }
                                                    ?>"
                                                >
                                            </div>
                                            <button class="btn btn-info" name="submit">Save</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ROW-1 END -->

<?php include('includes/footer.php')?>