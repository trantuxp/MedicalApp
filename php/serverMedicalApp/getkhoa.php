<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM khoa";
	$data = mysqli_query($connect,$query);
	$mangdichvu= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangdichvu, new cuahang(
			$row['id'],
			$row['tenkhoa'],
			$row['anh'],
			$row['mota']));
	}
	$mangdichvu = [ 
	
		"data" => $mangdichvu 
	];

	echo json_encode($mangdichvu);
	class cuahang{
		function __construct($id,$tenkhoa,$anh,$mota){
			$this->id=$id;
			$this->tenkhoa=$tenkhoa;
			$this->anh=$anh;
			$this->mota=$mota;
		
		}
	}
?>