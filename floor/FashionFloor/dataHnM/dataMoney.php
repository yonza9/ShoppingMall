<?php
include("../db_connection.php");
//setting header to json
header('Content-Type: application/json');


//Customer money spend
$query = sprintf("select moneySpend, count(moneySpend) as countMoney from hnm group by moneySpend order by FIELD(moneySpend, 'RM 100 below', 'RM 100 - RM 249','RM 250 - RM 499','RM 500 above')");
$result = $conn->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}
$result->close();
$conn->close();

print json_encode($data);
 
?>