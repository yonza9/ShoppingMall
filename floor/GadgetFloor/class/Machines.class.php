<?php

class Machines extends Gadget {
	public function __construct(PDO $pdo) {
		$this->store_name = 'Machines';
		$this->location = 'G1.127';
		$this->image = 'picture/machines_store.jpg';
		$this->table_name = 'machines';
		$this->pdo = $pdo;
	}
}

?>