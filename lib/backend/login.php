<?php
header('Content-Type: application/json');

$conn = new mysqli("localhost", "u824831432_priya_krishna", "Siddhant@14072002", "u824831432_priya_krishna");

if ($conn->connect_error) {
    die(json_encode(["status" => "db_error", "message" => $conn->connect_error]));
}

if (!isset($_POST['email']) || !isset($_POST['password'])) {
    die(json_encode(["status" => "missing_params"]));
}

$email = $_POST['email'];
$pwd = $_POST['password'];

$query = "SELECT * FROM users WHERE email = '$email' AND password='$pwd'";
$execute = mysqli_query($conn, $query);

if (!$execute) {
    die(json_encode(["status" => "query_error", "message" => mysqli_error($conn)]));
}

if (mysqli_num_rows($execute) > 0) {
    echo json_encode(["status" => "success"]);
} else {
    echo json_encode(["status" => "error"]);
}
?>
