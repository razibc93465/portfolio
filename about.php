<?php
require_once '../portfolio/class/about.php';
$about = new About();
$query_result11 = $about->select_all_about_info();

?>
<?php

require_once '../portfolio/class/about_2.php';
$about2 = new About2();
$query_result2 = $about2->select_all_about_info2();
?>




<?php
require_once './include/header.php';
?>



<div class="row">
    <div class="col-12 content_height">



        <div class="heading">Academic Qualifications:</div>

        <div class="paragraph">
            <p>
            <table align="center">
                <tr text-align="center">
                    <th>Exam Title</th>
                    <th>Group / Subject</th>
                    <th>Board / University</th>
                    <th>Result</th>
                    <th>Pass.Year</th>
                    <th>Duration</th>                 
                </tr>
                <?php
                $i = 1;
                while ($blog_info11 = mysqli_fetch_assoc($query_result11)) {
                    ?> 
                    <tr>
                        <td><?php echo ($blog_info11['exam']); ?></td>
                        <td><?php echo ($blog_info11['group_sub']); ?></td>
                        <td><?php echo ($blog_info11['board']); ?></td>
                        <td><?php echo ($blog_info11['result']); ?></td>
                        <td><?php echo ($blog_info11['year']); ?></td>
                        <td><?php echo ($blog_info11['duration']); ?></td>
                    </tr>
                <?php } ?>
            </table>
            </p>
        </div>


        <div class="heading">Personal Information:</div>
        <div class="paragraph">
            <p>
            <table align="center">

                
                    <tr>
                        <th>Father's Name</th>
                        <td><?php echo $_SESSION['father']; ?></td>        
                    </tr>
                    <tr>
                        <th>Mother's Name</th>
                        <td><?php echo $_SESSION['mother']; ?></td>        
                    </tr>
                    <tr>
                        <th>Date of Birth</th>
                        <td><?php echo $_SESSION['dob']; ?></td>        
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td><?php echo $_SESSION['gender']; ?></td>        
                    </tr>
                    <tr>
                        <th>Marital Status</th>
                        <td><?php echo $_SESSION['marital']; ?></td>        
                    </tr>
                    <tr>
                        <th>Nationality</th>
                        <td><?php echo $_SESSION['nationality']; ?></td>        
                    </tr>
                    <tr text-align="center">
                        <th>National Id No</th>
                        <td><?php echo $_SESSION['nid']; ?></td>        
                    </tr>
                    <tr>
                        <th>Religion</th>
                        <td><?php echo $_SESSION['religion']; ?></td>        
                    </tr>
                    <tr>
                        <th>Permanent Address</th>
                        <td><?php echo $_SESSION['address']; ?></td>        
                    </tr>
                    <tr>
                        <th>Current Location</th>
                        <td><?php echo $_SESSION['location']; ?></td>        
                    </tr>

               

            </table>
            </p>
        </div>


    </div>
</div>



<?php
require_once './include/footer.php';
?>