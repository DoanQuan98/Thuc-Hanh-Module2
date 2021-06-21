<?php


class DBConnect
{
    protected  $dsn;
    protected $username;
    protected $password;

    public function __construct()
    {
        $this->dsn = "mysql:host=localhost;dbname=QLHH";
        $this->username = "root";
        $this->password = "123456@Abc";
    }

    public function connect()
    {
        try{
            return new PDO($this->dsn,$this->username,$this->password);
        }catch (PDOException $exception){
            echo "Server đang bảo trì";
            exit();
        }
    }
}