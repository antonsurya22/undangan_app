<?php

//Created by Antonie Dev

header("Content-type: application/json; charset=ISO-8859-1");
include_once "koneksi.php"
    $email = $_GET['email'];
    $sql = "SELECT * FROM undangan WHERE email = '$email'";
    $query = mysqli_query($koneksi, $sql);
        $arr = $array();

        while($row = mysqli_fetch_assoc($query)){
            $arr[] = $row;
        }

    print json_encode($arr);

    mysqli_close($koneksi);

?>