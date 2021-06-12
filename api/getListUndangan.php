<?php
    header("Content-type: application/json; charset=ISO-8859-1");
    include_once "koneksi.php";
    
    $sql = "SELECT * FROM undangan";
    $query = mysqli_query($koneksi, $sql);
       
    $arr = array();
    while($row = mysqli_fetch_assoc($query)){
        $arr[] = $row;
    }

    //$arrUndangan['undangan'] = $arr;
    print json_encode($arr);

    mysqli_close($koneksi);
            
?>