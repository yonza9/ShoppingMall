<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Customer age group
$query = sprintf("select age, count(age) as countAge from forever21 group by age");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>