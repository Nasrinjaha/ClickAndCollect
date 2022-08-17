<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    <meta http-equiv="Content-Language" content="en-US" />
    <meta name="description" content="Dynamic responsive Ecommerce free web template" />
    <meta name="keywords" content="Ecommerce template, Ecommerce free responsive template, free template" />
    <meta name="author" content="Maniruzzaman Akash">

    <!-- CSS links -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />

    
    <!-- Animate.css -->
    <link type="text/css" rel="stylesheet" href="css/animate.css" />

    <!-- Owl Carousel CSS-->
    <link type="text/css" rel="stylesheet" href="css/owl.carousel.min.css" />
    <link type="text/css" rel="stylesheet" href="css/owl.theme.default.min.css" />



    <!-- Mega navigation bar -->
    <link rel="stylesheet" type="text/css" media="all" href="css/webslidemenu.css" />

    <!-- Main css link -->
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link rel="icon" href="images/logo.png" />
    
</head>
<body>
    <?php 
       include 'navbar.php'; 
    ?>

<div class="content-area">

    <div class="registration-page">
        <div class="container">

            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="text-center">Create Your Account</h2>
                    <form method="post" class="cmxform" action="" id="signUpForm">

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 form-control-label">Name :</label>
                            <div class="col-sm-8">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Write your name" name="name" minlength="2" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-sm-2 form-control-label">Email :</label>
                            <div class="col-sm-8">
                                <input type="email" name="email" class="form-control email" id="email" placeholder="write your email address">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="tradelicence" class="col-sm-2 form-control-label"> Trade_licence : </label>
                            <div class="col-sm-8">
                                <input type="text" name="tradelicence" class="form-control" id="tradelicence" placeholder="tradelicence">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="experience" class="col-sm-2 form-control-label">Experience : </label>
                            <div class="col-sm-8">
                                <input type="text" name="experience" class="form-control" id="experience" placeholder="write your experience">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="cv" class="col-sm-2 form-control-label">CV : </label>
                            <div class="col-sm-8">
                                <input type="file" name="cv" class="form-control" id="cv" placeholder="upload your cv">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="contact" class="col-sm-2 form-control-label"> Contact : </label>
                            <div class="col-sm-8">
                                <input type="text" name="contact" class="form-control" id="contact" placeholder="018********">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="files" class="col-sm-2 form-control-label">Image : </label>
                            <div class="col-sm-8">
                                <input type="file" name="image" class="form-control" id="files" placeholder="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="address" class="col-sm-2 form-control-label">Address :</label>
                            <div class="col-sm-8">
                                <input type="text" name="address" class="form-control" id="address" placeholder="write your address">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="Address" class="col-sm-2 form-control-label">Gender :</label>
                            <div class="col-sm-8">
                                <select name="gender" class="form-control" id="Gender" type="text" placeholder="Enter your gender">
                                    <option value="NULL">Gender</option>
                                    <option value="male">Male</option>
                                    <option value="female"> Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="dob" class="col-sm-2 form-control-label">BirthDate :</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" name="dob" id="dob" placeholder="Enter Birthdate" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="pass1" class="col-sm-2 form-control-label">Password :</label>
                            <div class="col-sm-8">
                                <input type="password" name="pass1" class="form-control" id="pass1" placeholder="Enter password">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="pass2" class="col-sm-2 form-control-label">Confirm Password :</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" name="pass2" id="pass2" placeholder="Same password previously entered">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-offset-2 col-sm-8">
                                <input type="submit" name = "submit" class="btn btn-success btn-lg btn-block" id="submitForm" value="Sign Up Now" />
                            </div>
                        </div>
                        <?php
                            if(isset($_POST['submit'])){
                                $name =   $_POST['name'];
                                $mail = $_POST['email'];
                                $address = $_POST['address'];
                                $contact = $_POST['contact'];
                                $pass1 = $_POST['pass1'];
                                $pass2 =  $_POST['pass2']; 
                                $dob = $_POST['dob'];
                                $gender = $_POST['gender'];
                               // $img = $_FILES['image']['name'];
                                $experience = $_POST['experience'];
                                $trade = $_POST['tradelicence'];
                                // echo  $name;
                                // echo '<br>';
                                // echo   $mail;
                                // echo '<br>';
                                // echo  $address;
                                // echo '<br>';
                                // echo  $contact;
                                // echo '<br>';
                                // echo  $pass1 ;
                                // echo '<br>';
                                // echo  $dob ;
                                // echo '<br>';
                                // echo  $gender;
                                // echo '<br>';
                                // echo  $experience ;
                                // echo '<br>';
                                // echo   $trade ;
                                // echo '<br>';


                                // if($img){
                                //     $separetedimage = explode(".",$img);
                                //     $ext = $separetedimage[1];
                                //     $date = date("D:M:Y");
                                //     $time = date("h:i:s");
                                //     $image = md5($date.$time);//MD5 function for encryption
                                //     $image = $image.".".$ext;
                                    
                                // }
                                // else{
                                //     $image="NULL";
                                // }
                                
                                // if($image!=NULL){
                                //      move_uploaded_file($_FILES['image']['tmp_name'],"images2/$image");
                                // }
                                echo '<br>';
                                if($gender=='NULL'){
                                    echo '<span style= "color:red;">Please mention the gender!!!';
                                    echo '<br>';
                                }
                                else if($pass1!=$pass2){
                                    echo '<span style= "color:red;">password doesn\'t match!!!';
                                }
                                else if($dob==""){
                                    echo '<span style= "color:red;">Please enter date f birth!!!';
                                    echo '<br>';
                                }
                                else{
                                    $query="SELECT * FROM sellers WHERE email = '$mail' "; 
                                    $table = mysqli_query($con,$query);
                                    $row = mysqli_fetch_array($table);
                                    if($row['email']==$mail){
                                        
                                        echo '<span style= "color:red;">duplicate user!!!';                                                       
    
                                    }
                                    else{
                                        $query1 = "INSERT INTO `sellers` ( `name`, `email`, `trade_licence`, `experience`, `cv`, `address`, `dob`, `gender`, `mobile`, `pass`, `status`, `img`)
                                        VALUES('$name','$mail','$trade','$experience','no file attach','$address','$dob','$gender','$contact','$pass1','0','null')";
                                        if(mysqli_query($con,$query1)){
                                                echo '<span style= "color:green;">Successfully inserted';
                                                echo "<script>window.location.href='seller/profile.php'</script>" ;
                                                
                                        }
                                        else{
                                            echo '<span style= "color:red;">insertion failed';
                                        }
    
                                    }
                                    // echo "<script>window.location.href='registerdriver.php?name=".$name."&email=".$mail."&contact=".$contact."&pass=".$pass1."&dob=".$dob."&gender=".$gender."&address=".$address."&img=".$image."'</script>" ;
                                }
                               

                            }
                               
                      ?>

                        
                    </form>
                </div>
            </div> <!--End Row-->

        </div>
    </div> <!--End Registration page div-->

</div> <!-- End content Area class -->
<?php 
       include 'footer.php'; 
    ?>


</body>
</html>