<?php  
	include "connect.php";
	$tenlich=$_GET['tenlich'];
	$idbenhnhan=$_GET['idbenhnhan'];
	$idbacsi=$_GET['idbacsi'];
	$trieuchung=$_GET['trieuchung'];
	$idkhoa=$_GET['idkhoa'];
	$ngaykham=$_GET['ngaykham'];
	$giokham=$_GET['giokham'];
	
	if (strlen($tenlich)>0&&strlen($idbenhnhan)>0&& strlen($idbacsi)>0 ) {
		$query="INSERT INTO lichkham(tenlich,idbenhnhan,idbacsi,trieuchung,idkhoa,ngaykham,giokham) VALUES ('$tenlich',$idbenhnhan,$idbacsi,'$trieuchung',$idkhoa,'$ngaykham','$giokham')";
		if (mysqli_query($connect,$query)) {
		    echo "Thành công";
		}else {
			echo "Thất bại";
		}
	}else {
		echo "Bạn hãy kiểm tra lại dữ liệu";
	}
?>