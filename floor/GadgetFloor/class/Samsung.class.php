<?php

class Samsung extends Gadget {
	public function __construct(PDO $pdo) {
		$this->store_name = 'Samsung';
		$this->location = 'F1.32 & F1.38';
		$this->image = 'picture/samsung_store.jpg';
		$this->table_name = 'samsung';
		$this->pdo = $pdo;
	}
}

?>