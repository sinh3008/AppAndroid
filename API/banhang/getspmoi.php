<?php 
	include "connect.php";
	$query = "SELECT * FROM `sanphammoi`";
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
	}else{
			$arr = [
			'success' => false,
			'message' => "Khong thanh cong",
			'result' => $result
		];
	}

	print_r(json_encode($arr));
