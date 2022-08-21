<?php

include "connect.php";
$email = $_POST['email'];
$pass = $_POST['pass'];
$username = $_POST['username'];
$mobile = $_POST['mobile'];



//check email đã có hay  chưa

$query = 'SELECT * FROM `user` WHERE `email`  = "' . $email . '"';
$data = mysqli_query($conn, $query);
$numrow = mysqli_num_rows($data);
if ($numrow > 0) {
    $arr = [
        'success' => false,
        'message' => "Email đã tồn tại, vui lòng nhập email khác",
    ];
} else {
    $query = 'INSERT INTO `user`(`email`, `pass`, `username`, `mobile`) VALUES ("' . $email . '","' . $pass . '","' . $username . '","' . $mobile . '")';
    $data = mysqli_query($conn, $query);

    if ($data  == true) {
        // code...
        $arr = [
            'success' => true,
            'message' => "Thanh cong",
        ];
    } else {
        $arr = [
            'success' => false,
            'message' => "Khong thanh cong",
        ];
    }
}

print_r(json_encode($arr));
?>