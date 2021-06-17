<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "phpdasar";

    $conn = mysqli_connect($server, $username, $password, $database);

    if (!$conn) {
        die("Koneksi Error!");
    }
?>