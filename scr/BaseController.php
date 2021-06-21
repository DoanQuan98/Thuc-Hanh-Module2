<?php

include_once "DBConnect.php";

class BaseController
{
    protected $connect;

    public function __construct()
    {
        $dbConnect = new DBConnect();
        $this->connect = $dbConnect->connect();
    }

    public function getAllProduct()
    {
        $sql = "SELECT * FROM items";
        $query = $this->connect->query($sql);

        return $query->fetchAll();
    }

    public function addProduct($product)
    {
        $sql = "INSERT INTO items (Name,ProductType,Price,Amount,DateCreated,ProductDescription)) VALUE (?,?,?,?,now(),?)";
        $stmt = $this->connect->prepare($sql);
        $stmt->bindParam(1, $product->Name);
        $stmt->bindParam(2, $product->type);
        $stmt->bindParam(3, $product->price);
        $stmt->bindParam(4, $product->amount);
        $stmt->bindParam(5, $product->des);
        return $stmt->execute();
    }
}