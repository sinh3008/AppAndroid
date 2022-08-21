<?php
include "connect.php";
$search = $_POST['search'];

if(empty($search)){
    $arr = [
        'success' => false,
        'message' => "Bạn chưa tìm gì :(",

    ];
}else{

    $query = "SELECT * FROM `sanphammoi` WHERE `tensp`LIKE '%".$search."%'";
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
}


print_r(json_encode($arr));

?>
