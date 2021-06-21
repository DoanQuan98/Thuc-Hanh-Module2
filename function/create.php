<?php

include_once "../scr/DBConnect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["Name"];
    $type = $_POST["ProductType"];
    $price = $_POST["Price"];
    $amount = $_POST["Amount"];
    $des = $_POST["ProductDescription"];
    $database = new DBConnect();
    $conn = $database->connect();
    $sql = "insert into items (Name,ProductType,Price,Amount,DateCreated,ProductDescription) value ('$name','$type','$price','$amount',now(),'$des')";

    $conn->query($sql);
    header('location: ../index.php');
}