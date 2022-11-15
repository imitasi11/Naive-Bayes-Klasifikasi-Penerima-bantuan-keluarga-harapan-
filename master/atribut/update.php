  
<?php 

include "../koneksi.php";
$jml_atribut=0;
$count=0;
$well="";

$id = $_POST['id'];
$nama = $_POST['nama'];

$sql = "SELECT * FROM tb_parameter where id_atribut = '$id' order by nilai";
$result = $db->query($sql);
$noparam=array();
$tampung=array();
foreach ($result as $row) {

    $count=$count+1;
    $noparam[$count]=$row['nilai'];
    }
for($i=1;$i<=$count;$i++){
	$tampung[$i] = $_POST[$noparam[$i]];	 	
}

for($i=1;$i<=$count;$i++){
	$a=$tampung[$i];
	$b=$noparam[$i];
	$query_mysql = "UPDATE tb_parameter SET parameter ='$a' WHERE id_atribut='$id' AND nilai='$b'";
	$result = $db->query($query_mysql);
	}
$querys_mysql = "UPDATE tb_atribut SET atribut ='$nama'   WHERE id_atribut='$id'";
$resultname= $db->query($querys_mysql);
 header('Location: ../atribut.php');
?>