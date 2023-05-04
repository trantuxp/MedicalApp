<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM thuoc";
	$data = mysqli_query($connect,$query);
	$mangthuoc= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangthuoc, new cuahang(
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
			$row['iddanhmuc'],));
	}
	$mangthuoc = [ 
	
		"data" => $mangthuoc 
	];

	echo json_encode($mangthuoc);
	class cuahang{
		function __construct($id,$tenthuoc,$anh,$mota,$soluong,$dongia,$thanhphan,$congdung,$doituongsd,$cachdung,$iddanhmuc){
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
			$this->iddanhmuc=$iddanhmuc;
		
		}
	}
?>