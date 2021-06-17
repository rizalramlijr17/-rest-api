<?php
    include 'conn.php';

    $nama = isset($_POST["nama"]) ? $_POST["nama"] : "";
    $nip = isset($_POST["nip"]) ? $_POST["nip"] : "";
    $email = isset($_POST["email"]) ? $_POST["email"] : "";


    $sql = "UPDATE `dosen` SET `nama` = '".$nama."', `nip` = '".$nip."', `email` = '".$email."'
            WHERE `news`.`id` = '".$id."'";

    $query = mysqli_query($conn, $sql);
    if ($query) {
        $msg = "Data berhasil diupdate!";
    } else {
        $msg = "Data gagal diupdate!";
    }
    $respone[] = array(
        'status' => 'OK',
        'message' => $msg,
    );
    echo json_encode($respone);
    
?>