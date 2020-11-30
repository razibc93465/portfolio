<?php

require_once '../portfolio/class/about.php';
$about = new About();
$query_result11 = $about->select_all_about_info();

?>




<?php
require_once './include/header.php';
?>



<div class="row">
    <div class="col-12 content_height">
        <?php
        $i = 1;
        while ($blog_info11 = mysqli_fetch_assoc($query_result11)) {
            ?> 


            <div class="heading">School life:</div>
            <div class="paragraph">
                <p><?php echo ($blog_info11['school']); ?></p>
            </div>

            <div class="heading">College life:</div>
            <div class="paragraph"> 
                <p><?php echo ($blog_info11['college']); ?></p>
            </div>
            <div class="heading">University life:</div>
            <div class="paragraph"> 
                <p><?php echo ($blog_info11['university']); ?></p>
            </div>
            <div class="heading">Family life:</div>
            <div class="paragraph"> 
                <p><?php echo ($blog_info11['family']); ?></p>
            </div>

        <?php } ?>
    </div>
</div>



<?php
require_once './include/footer.php';
?>