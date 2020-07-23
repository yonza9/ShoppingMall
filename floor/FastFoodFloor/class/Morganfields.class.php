<?php

class Morganfields extends FastFood {
	public function __construct(PDO $pdo) {
		$this->store_name = 'Morganfields';
		$this->location = 'OB-K8';
		$this->image = 'picture/morganfields_store.jpg';
		$this->table_name = 'morganfield';
		$this->pdo = $pdo;
	}
}

?>
