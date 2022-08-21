<?php
include "connect.php";
$page = $_POST['page'];
$total = 5; //cần lấy 5 sp trên 1 trang
$pos = ($page-1)*$total;  //0.5, 5.5
$loai = $_POST['loai'];


$query = 'SELECT * FROM `sanphammoi` WHERE `loai` = '.$loai.' LIMIT '.$pos.','.$total.'';
$data = mysqli_query($conn, $query);
$result = array();
while ($row = mysqli_fetch_assoc($data)) {
    // code...
    $result[] = ($row);
}
if (!empty($result)) {
    // code...
    $arr = [
        'success' => true,
        'message' => "Thanh cong",
        'result' => $result
    ];
} else {
    $arr = [
        'success' => false,
        'message' => "Khong thanh cong",
        'result' => $result
    ];
}

print_r(json_encode($arr));
