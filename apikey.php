<?php

    function getKey() {
        return ["1234", "rahasia", "xyz"];
    }

    function isValid($input) {
        $apikey = $input["api_key"];
        if (in_array($apikey, getKey())) {
            return true;
        } else {
            return false;
        }
    }

    function jsonOut($status, $message, $data) {
        $respon = ["status" => $status, "message" => $message, "data" => $data];
    
        header("Content-type: application/json");
        echo json_encode($respon);
    }
    
    function getNewsData() {
        require_once('koneksi.php');
        $sql = "SELECT * FROM dosen";
        $query = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($query)) {
            $result[] = array(
                'nama' => $row['nama'],
                'nip' => $row['nip'],
                'email' => $row['email']
            );
        }
        return $result;
    }
    
    if (isValid($_GET)) {
        jsonOut("berhasil", "apikey benar", getNewsData());
    } else {
        jsonOut("gagal", "apikey salah", null);
    }
?>
