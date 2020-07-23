<?php

class McDonald extends FastFood {
	public function __construct(PDO $pdo) {
		$this->store_name = 'McDonald';
		$this->location = 'LG2.41';
		$this->image = 'picture/mcdonald_store.jpg';
		$this->table_name = 'mcdonald';
		$this->pdo = $pdo;
	}
}

?>