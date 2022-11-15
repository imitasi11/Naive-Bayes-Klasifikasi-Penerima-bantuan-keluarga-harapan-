<?php 
include '../koneksi.php';
$id = $_GET['id'];
$delete_id= "DELETE FROM tb_parameter where id_atribut ='$id' ";
$id_result = $db->query($delete_id);
$delete_data= "DELETE FROM tb_data where id_atribut ='$id' ";
$data_result = $db->query($delete_data);
$delete_atr= "DELETE FROM tb_atribut where id_atribut ='$id' ";
$atr_result = $db->query($delete_atr);
$delete_datas= "DELETE FROM tb_data_test where id_atribut ='$id' ";
$data_results = $db->query($delete_datas);
header("location:../atribut.php");
?>