<?php

    //Created by Antonie-Dev 8)

    //Membuat koneksi
    $koneksi = mysqli_connect("localhost", "root", "", "apiundangan");
    mysqli_set_charset($koneksi, 'utf8');

    //Cek Koneksi
    if(mysqli_connect_errno()){
         echo "Koneksi ke server gagal : " .mysqli_connect_error(); 
     }
?>