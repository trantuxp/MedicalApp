<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM dichvu";
	$data = mysqli_query($connect,$query);
	$mangdichvu= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangdichvu, new cuahang(
			$row['id'],
			$row['tendichvu'],
			$row['anh'],
			$row['mota'],
			$row['thietbi'],
			$row['quytrinh']));
	}
	$mangdichvu = [ 
	
		"data" => $mangdichvu 
	];

	echo json_encode($mangdichvu);
	class cuahang{
		function __construct($id,$tendichvu,$anh,$mota,$thietbi,$quytrinh){
			$this->id=$id;
			$this->tendichvu=$tendichvu;
			$this->anh=$anh;
			$this->mota=$mota;
			$this->thietbi=$thietbi;
			$this->quytrinh=$quytrinh;
		}
	}
?>