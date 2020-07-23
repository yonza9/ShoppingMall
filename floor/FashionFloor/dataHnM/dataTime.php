<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Visitor Time Spend 
$query = sprintf("SELECT timeSpend, count(timeSpend) as countTime from hnm group by timeSpend order by FIELD(timeSpend, '30 minute below', '30 minutes to 60 minutes','60 minutes to 120 minutes','120 minutes and above')");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
?>