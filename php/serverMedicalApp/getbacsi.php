<?php  
	include "connect.php";
	?>
	
	<?php
	$query = "SELECT * FROM bacsi";
	$data = mysqli_query($connect,$query);
	$mangbacsi= array();
	while($row =mysqli_fetch_assoc($data)){
		array_push($mangbacsi, new cuahang(
			$row['id'],
			$row['tenbacsi'],
			$row['anh'],
			$row['chucvu'],
			$row['mota'],
			$row['idkhoa']));
	}
	$mangbacsi = [ 
	
		"data" => $mangbacsi 
	];

	echo json_encode($mangbacsi);
	class cuahang{
		function __construct($id,$tenbacsi,$anh,$chucvu,$mota,$idkhoa){
			$this->id=$id;
			$this->tenbacsi=$tenbacsi;
			$this->anh=$anh;
			$this->chucvu=$chucvu;
			$this->mota=$mota;
			$this->idkhoa=$idkhoa;
		}
	}
?>