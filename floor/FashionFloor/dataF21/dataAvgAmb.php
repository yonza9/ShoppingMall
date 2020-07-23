<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//AVG Product Quality
$query = sprintf("select sum(ambience)/count(ambience) as avg from forever21");
$result = $conn->query($query);

 
foreach ($result as $row) {
	$data = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>