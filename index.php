<?php
//session_start();

require_once './class/blog.php';
$blog = new Blog();
$query_result = $blog->select_all_blog_info();
?>



<?php
require_once './include/header.php';
?>



<div class="row">
    <div class="col-12 content_height">



        <div class="heading">Mission of my life:</div>
        <div class="paragraph"> <p><?php echo $_SESSION['vission']; ?></p></div>
        <div class="heading">Vision of my life:</div>
        <div class="paragraph"> <p><?php echo $_SESSION['vission']; ?></p></div>
        <div class="heading">Dream of my life:</div>
        <div class="paragraph"> <p><?php echo $_SESSION['dream']; ?></p></div>


    </div>
</div>



<?php
require_once './include/footer.php';
?>