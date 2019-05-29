<?php
function conectar(){
    $dsn = 'mysql:host=localhost;dbname=egressos;port=33061';
    $user = 'root';
    $password = '123';
    try {
        $conn = new PDO($dsn, $user, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    return $conn;
    
}


        

