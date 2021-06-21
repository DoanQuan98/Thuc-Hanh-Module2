<?php

include_once "../scr/DBConnect.php";

$database = new DBConnect();
$conn = $database->connect();

$id = $_REQUEST['id'];
$sql = "DELETE FROM items WHERE ID = $id";
$conn->query($sql);

header('location: ../index.php');