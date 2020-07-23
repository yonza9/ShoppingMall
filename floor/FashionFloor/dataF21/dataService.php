<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Staff Service
$query = sprintf("SELECT staffService, count(staffService) as count FROM forever21 group by staffService");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>