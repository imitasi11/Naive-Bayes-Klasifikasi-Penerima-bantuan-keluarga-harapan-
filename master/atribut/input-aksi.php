  
<?php 

include "../koneksi.php";

$tampung=array();
for($i=1;$i<=4;$i++){
	$tampung[$i] = $_POST[$i];
}

$nama = $_POST['nama'];
$id_atribut=rand(1,100);
$cek_id= "SELECT * FROM tb_atribut where id_atribut ='$id_atribut' ";
$cek_result = mysqli_query($connect,$cek_id);
$numrow = mysqli_num_rows($cek_result);

while($numrow > 0){
	$id_atribut=0;
	$id_atribut=rand(1,100);
	$cek_id= "SELECT * FROM tb_atribut where id_atribut ='$id_atribut' ";
	$cek_result = mysqli_query($connect,$cek_id);
	$numrow = mysqli_num_rows($cek_result);
}

	$input_atribut = "INSERT INTO tb_atribut VALUES('$id_atribut','$nama') ";
	$atribut_result = $db->query($input_atribut);
	for($i=1;$i<=4;$i++){
		$b=$tampung[$i];
		$input_parameter = "INSERT INTO tb_parameter VALUES(NULL,'$id_atribut','$i','$b') ";
		$param_result = $db->query($input_parameter);
	}
	$responden="SELECT * from tb_responden";
	$responden_result= $db->query($responden);
	foreach ($responden_result as $row) {
		$a=$row['id_responden'];
		$query_mysql = "INSERT INTO tb_data VALUES(NULL,'$a',$id_atribut,'1')";
		$result= $db->query($query_mysql);
	}
	$responden="SELECT * from tb_responden_test";
	$responden_result= $db->query($responden);
	foreach ($responden_result as $row) {
		$a=$row['id_responden'];
		$query_mysql = "INSERT INTO yb_data_test VALUES(NULL,'$a',$id_atribut,'1')";
		$result= $db->query($query_mysql);
	}
	

 header('Location: ../atribut.php');
 // delete

?>