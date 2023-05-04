<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM tintuc";
	$data = mysqli_query($connect,$query);
	$mangtintuc= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangtintuc, new cuahang(
			$row['id'],
			$row['tentt'],
			$row['mota'],
			$row['anh']));
	}
	$mangtintuc = [ 
	
		"data" => $mangtintuc 
	];

	echo json_encode($mangtintuc);
	class cuahang{
		function __construct($id,$tentt,$mota,$anh){
			$this->id=$id;
			$this->tentt=$tentt;
			$this->mota=$mota;
			$this->anh=$anh;
		}
	}
?>