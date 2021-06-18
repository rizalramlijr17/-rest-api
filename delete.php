<?php
    include 'koneksi.php';

    $id = $_GET['id'];
    $sql = "DELETE FROM `dosen` WHERE `dosen`.`id` = '".$id."'";
    $query = mysqli_query($conn, $sql);
        if ($query) {
            $msg = "Data berhasil dihapus!";
        } else {
            $msg = "Data gagal dihapus!";
        }
        $respon[] = array(
            'status' => 'OK',
            'message' => $msg,
        );
        echo json_encode($respon);
?>
