<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Rating
$query = sprintf("SELECT ambience, count(ambience) as count from forever21 group by ambience");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>