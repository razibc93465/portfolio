<?php
require_once './class/blog.php';
$blog = new Blog();
$query_result = $blog->select_all_blog_info();
?>
<?php
require_once './include/header.php';
?>



<div class="row">
    <div class="col-12 content_height">
        <?php
        $i = 1;
        while ($blog_info = mysqli_fetch_assoc($query_result)) {
            ?> 


            <div class="heading">Mission of my life:</div>
            <div class="paragraph">
                <p><?php echo mb_substr($blog_info['mission'], 0, 50); ?></p>
            </div>

            <div class="heading">Vision of my life:</div>
            <div class="paragraph"> <p><?php echo mb_substr($blog_info['vission'], 0, 50); ?></p>
            </div>
            <div class="heading">Dream of my life:</div>
            <div class="paragraph"> <p><?php echo mb_substr($blog_info['dream'], 0, 50); ?></p>
            </div>

        <?php } ?>
    </div>
</div>



<?php
require_once './include/footer.php';
?>