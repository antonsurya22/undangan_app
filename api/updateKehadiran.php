<?php
   // header("Content-type: application/json; charset=ISO-8859-1");
   include_once "koneksi.php";
   $id_undangan = $_GET['id_undangan'];

   $sql = "UPDATE undangan SET status_datang = 1 WHERE id_undangan = $id_undangan";
   //echo $sql;
   $query = mysqli_query($koneksi, $sql);
   if($query){
       echo "Update Berhasil!";
   }else{
       echo "Update Gagal!";
   }

   mysqli_close($koneksi);

?>