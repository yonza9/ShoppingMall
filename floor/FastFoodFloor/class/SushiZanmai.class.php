<?php

class SushiZanmai extends FastFood {
	public function __construct(PDO $pdo) {
		$this->store_name = 'Sushi Zanmai';
		$this->location = 'OB2.F.U1';
		$this->image = 'picture/sushizanmai_store.jpg';
		$this->table_name = 'sushizanmai';
		$this->pdo = $pdo;
	}
}

?>

