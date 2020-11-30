<?php
//session_start();

require_once './class/blog11.php';
$blog11 = new Blog11();


$query_result11= $blog11->select_all_image_ingo();
?>


<?php
require_once './include/header.php';
?>



<div class="row">
    <H3>You will get Images from here</H3>
    <div class="col-12 content_height">

        <div class="heading">Mission of my life:</div>
       
            <div class="container">
            <div class="row">
                <?php
                $i = 1;
                while ($blog_info11 = mysqli_fetch_assoc($query_result11)) {
                    ?>
                
                <div class="col-3">
                    <div align="center" >
                        <img class="col-10 paragraph" src="../portfolio/admin/<?php echo $blog_info11['image']; ?>" alt=""width="320px" height="250px" >
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
       



    </div>
</div>



<?php
require_once './include/footer.php';
?>