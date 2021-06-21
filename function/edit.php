<?php

include_once "../scr/DBConnect.php";

$database = new DBConnect();
$conn = $database->connect();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["Name"];
    $type = $_POST["ProductType"];
    $price = $_POST["Price"];
    $amount = $_POST["Amount"];
    $des = $_POST["ProductDescription"];
    $database = new DBConnect();
    $conn = $database->connect();
    $id = $_REQUEST['ID'];
    $sql = "UPDATE items SET Name = '$name', ProductType = '$type', Price = '$price',Amount = '$amount',ProductDescription = '$des' WHERE ID = $id";
    $conn->query($sql);

    header('location: ../index.php');
}