<?php

include __DIR__ . '/../db_credentials.php';

 //cr8 connection
 $conn = new mysqli($servername, $username, $password, $dbname);
 //chk connection
 if($conn->connect_error){
     die("Connection failed");
 }
 
?>
