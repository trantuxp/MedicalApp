<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM lichkham";
	$data = mysqli_query($connect,$query);
	$mangdichvu= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangdichvu, new cuahang(
			$row['id'],
			$row['tenlich'],
			$row['idbenhnhan'],
			$row['idbacsi'],
			$row['trieuchung'],
			$row['idkhoa'],
			$row['ngaykham'],
			$row['giokham']));
	}
	$mangdichvu = [ 
	
		"data" => $mangdichvu 
	];

	echo json_encode($mangdichvu);
	class cuahang{
		function __construct($id,$tenlich,$idbenhnhan,$idbacsi,$trieuchung,$idkhoa,$ngaykham,$giokham){
			$this->id=$id;
			$this->tenlich=$tenlich;
			$this->idbenhnhan=$idbenhnhan;
			$this->idbacsi=$idbacsi;
			$this->trieuchung=$trieuchung;
			$this->idkhoa=$idkhoa;
			$this->ngaykham=$ngaykham;
			$this->giokham=$giokham;
		}
	}
?>