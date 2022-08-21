<?php

include "connect.php";

$tensp = $_POST['tensp'];
$gia = $_POST['gia'];
$hinhanh = $_POST['hinhanh'];
$mota = $_POST['mota'];
$loai = $_POST['loai'];



//check email đã có hay  chưa

$query = 'INSERT INTO `sanphammoi`(`tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES ("'.$tensp.'","'.$gia.'","'.$hinhanh.'","'.$mota.'",'.$loai.')';
$data = mysqli_query($conn, $query);

    if ($data  == true) {
        // code...
        $arr = [
            'success' => true,
            'message' => "Thêm thành công",
        ];
    } else {
        $arr = [
            'success' => false,
            'message' => "Thêm không thành công",
        ];
    }

print_r(json_encode($arr));
?>