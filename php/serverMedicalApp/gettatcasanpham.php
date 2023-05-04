	
	
	<?php
	include "connect.php";

	$mangsp= array();
	$query = "SELECT * FROM thuoc  ";
	$data = mysqli_query($connect,$query);
	
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangsp, new Sanphammoinhat(
			$row['id'],
			$row['tenthuoc'],
			$row['anh'],
			$row['mota'],
			$row['soluong'],
			$row['dongia'],
			$row['thanhphan'],
			$row['congdung'],
			$row['doituongsd'],
			$row['cachdung'],
			$row['ngay'],
			$row['iddanhmuc']));
	}
	$mangsp = [ 
		
		"data" => $mangsp 
	];


	echo json_encode($mangsp);
	class Sanphammoinhat{
		function __construct($id,$tenthuoc,$anh,$mota,$soluong,
							$dongia,$thanhphan,$congdung,$doituongsd,$cachdung,$ngay,$iddanhmuc){
			$this->id=$id;
			$this->tenthuoc=$tenthuoc;
			$this->anh=$anh;
			$this->mota=$mota;
			$this->soluong=$soluong;
			$this->dongia=$dongia;
			$this->thanhphan=$thanhphan;
			$this->congdung=$congdung;
			$this->doituongsd=$doituongsd;
			$this->cachdung=$cachdung;
			$this->ngay=$ngay;
			$this->iddanhmuc=$iddanhmuc;
		}
	}
?>