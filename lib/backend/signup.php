<?php
   $conn = new mysqli("localhost","u824831432_priya_krishna","Siddhant@14072002","u824831432_priya_krishna");
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $city = $_POST['city'];
    $gender = $_POST['gender'];
    $password = $_POST['password'];
    
    if(!empty($name)&&
    !empty($email)&&
    !empty($phone)&&
    !empty($city)&&
    !empty($gender)&&
    !empty($password)){
        $query = "INSERT INTO users(username,email,phone,password) VALUES('$name','$email','$phone','$password')";    
        $exe = mysqli_query($conn,$query);
        if($exe){
            echo json_encode([
            "status"=>"success"
            ]);
        }else{
            echo json_encode([
            "status"=>"error"
            ]);
            
        }
    }
?>