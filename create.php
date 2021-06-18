<?php
    include 'koneksi.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
        $nama = isset($_POST["nama"]) ? $_POST["nama"] : "";
        $nip = isset($_POST["nip"]) ? $_POST["nip"] : "";
        $email = isset($_POST["email"]) ? $_POST["email"] : "";

        $sql = "INSERT INTO `dosen` (`nama`, `nip`, `email`)
        VALUES ('".$nama."', '".$nip."', '".$email."')";
        $query = mysqli_query($conn, $sql);
        if ($query) {
            $msg = "Data berhasil disimpan!";
        } else {
            $msg = "Data gagal disimpan!";
        }
        $respon[] = array(
            'status' => 'OK',
            'message' => $msg,
        );
        echo json_encode($respone);
    } elseif ($_SERVER['REQUEST_METHOD'] == 'GET') {
        $sql = "SELECT * FROM dosen";
        $query = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($query)) {
            $result[] = array(
                'nama'  => $row['nama'],
                'nip' => $row['nip'],
                'email' => $row['email']
            );
        }

        $respon[] = array(
            'status' => 'OK',
            'code' => 200,
            'data' => $result
        );
        header("Content-type: application/json");
        echo json_encode($respon);
    }
    
?>
