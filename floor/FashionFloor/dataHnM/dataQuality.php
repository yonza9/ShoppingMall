<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Product Quality Rating
$query = sprintf("SELECT productQuality, count(productQuality) as countQuality from hnm group by productQuality");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>