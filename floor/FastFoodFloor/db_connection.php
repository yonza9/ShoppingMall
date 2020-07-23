<?php

include __DIR__ . '/../db_credentials.php';

 try {
 	 //cr8 connection
 	$pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
 	//set the PDO error mode to exception
 	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 }
 //chk connection
 catch(PDOException $e) {
 	echo "Error: " . $e->getMessage();
 } 
?>
