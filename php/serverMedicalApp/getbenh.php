<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM benh";
	$data = mysqli_query($connect,$query);
	$mangbenh= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangbenh, new cuahang(
			$row['id'],
			$row['tenbenh'],
			$row['anh'],
			$row['gioithieu'],
			$row['trieuchung'],
			$row['idkhoa']));
	}
	$mangbenh = [ 
	
		"data" => $mangbenh 
	];

	echo json_encode($mangbenh);
	class cuahang{
		function __construct($id,$tenbenh,$anh,$gioithieu,$trieuchung,$idkhoa){
			$this->id=$id;
			$this->tenbenh=$tenbenh;
			$this->anh=$anh;
			$this->gioithieu=$gioithieu;
			$this->trieuchung=$trieuchung;
			$this->idkhoa=$idkhoa;
		}
	}
?>