<?php

class Huawei extends Gadget {
	public function __construct(PDO $pdo) {
		$this->store_name = 'Huawei';
		$this->location = 'F1.33 & LG2.71';
		$this->image = 'picture/huawei_store.jpg';
		$this->table_name = 'huawei';
		$this->pdo = $pdo;
	}
}

?>