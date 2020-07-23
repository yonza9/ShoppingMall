<?php

class FastFood {
	public $store_name;
	public $location;
	public $image;
	public $table_name;
	protected $pdo;
	private $totalRPDT;
	private $arrProdFeat;
	private $totalProdFeatData;
        public $total = 0;
        public $favourite = 0;
        public $popularity = 0;

	public function __sleep() {
		return array();
	}

	public function __destruct() {
		$this->pdo = null;
	}

	private function exec_query_column($sql) {
		$stmt = $this->pdo->prepare($sql);

        if($stmt->execute()){
            $result = $stmt->fetchColumn();
        }

        return $result;
	}
        
        public function get_popularity() {
		$sql = 'SELECT COUNT(favourite_brand) FROM ' . $this->table_name . ' WHERE favourite_brand = "' . $this->store_name .'"' ;
		$favourite = $this->exec_query_column($sql);
                $sql2 = 'SELECT COUNT(favourite_brand) FROM ' . $this->table_name;
                $total = $this->exec_query_column($sql2);
                $popularity = $favourite/$total * 100;
                echo round($popularity, 0) . '%';
	}
        
        public function get_main_stor_attr() {
		$sql = 'SELECT attraction FROM ' . $this->table_name  . ' WHERE favourite_brand = "' . $this->store_name . '" ORDER BY COUNT(1) DESC LIMIT 1';
		return $this->exec_query_column($sql);
	}
        
        public function get_main_prod1_feat() {
		$sql = 'SELECT popular_food, COUNT(popular_food) AS count FROM ' . $this->table_name . ' GROUP BY popular_food ORDER BY count DESC LIMIT 1 ';
		return $this->exec_query_column($sql);
	}	
        
         public function get_main_prod2_feat() {
		$sql = 'SELECT popular_drink, COUNT(popular_drink) AS count FROM ' . $this->table_name . ' GROUP BY popular_drink ORDER BY count DESC LIMIT 1 ';
		return $this->exec_query_column($sql);
	}
        
         public function get_crowdedtime() {
		$sql = 'SELECT crowded_time, COUNT(crowded_time) AS count FROM ' . $this->table_name . ' GROUP BY crowded_time ORDER BY count DESC LIMIT 1 ';
		return $this->exec_query_column($sql);
	}	
        
        public function get_dataset_popularity(){
            $sql = 'SELECT favourite_brand AS label, COUNT(favourite_brand) AS numSelection FROM ' . $this->table_name . ' GROUP BY favourite_brand';
            return $this->get_dataset($sql, 0);
        }
        
        public function get_dataset_attraction(){
            $sql = 'SELECT attraction AS label, COUNT(attraction) AS numSelection FROM ' . $this->table_name . ' GROUP BY attraction';
            return $this->get_dataset($sql, 0);
        }
        
        public function get_dataset_retention(){
            $sql = 'SELECT customer_retention AS label, COUNT(customer_retention) AS numSelection FROM ' . $this->table_name . ' GROUP BY customer_retention';
            return $this->get_dataset($sql, 1);
        }
        
        public function get_dataset_popularfood(){
            $sql = 'SELECT popular_food AS label, COUNT(popular_food) AS numSelection FROM ' . $this->table_name . ' WHERE favourite_brand = "' . $this->store_name .'" GROUP BY popular_food';
            return $this->get_dataset($sql, 0);
        }
        
        public function get_dataset_populardrink(){
            $sql = 'SELECT popular_drink AS label, COUNT(popular_drink) AS numSelection FROM ' . $this->table_name . ' WHERE favourite_brand = "' . $this->store_name .'" GROUP BY popular_drink';
            return $this->get_dataset($sql, 0);
        }
        
        public function get_dataset_crowdedtime(){
            $sql = 'SELECT crowded_time AS label, COUNT(crowded_time) AS numSelection FROM ' . $this->table_name .' WHERE favourite_brand = "' . $this->store_name .'" GROUP BY crowded_time';
            return $this->get_dataset($sql, 0);
        }
        
        public function get_dataset_cust_spend() {
		$sql = 'SELECT spending AS label, COUNT(spending) AS numSelection FROM ' . $this->table_name . ' WHERE favourite_brand = "' . $this->store_name . '" GROUP BY spending';
		return $this->get_dataset($sql, 2);
	}
        
         public function get_dataset_gender() {
		$sql = 'SELECT gender AS label, COUNT(gender) AS numSelection FROM food_customer f JOIN ' . $this->table_name . ' m ON f.Cust_ID = m.Cust_ID WHERE m.favourite_brand = "' . $this->store_name . '" GROUP BY gender';
		return $this->get_dataset($sql, 0);
	}
        
         public function get_dataset_age() {
		$sql = 'SELECT age_range AS label, COUNT(age_range) AS numSelection FROM food_customer f JOIN ' . $this->table_name . ' m ON f.Cust_ID = m.Cust_ID WHERE m.favourite_brand = "' . $this->store_name . '" GROUP BY age_range';
		return $this->get_dataset($sql, 0);
	}
	
         public function get_dataset_races() {
		$sql = 'SELECT race AS label, COUNT(race) AS numSelection FROM food_customer f JOIN ' . $this->table_name . ' m ON f.Cust_ID = m.Cust_ID WHERE m.favourite_brand = "' . $this->store_name . '" GROUP BY race';
		return $this->get_dataset($sql, 0);
	}
        
         public function get_dataset_job() {
		$sql = 'SELECT occupation AS label, COUNT(occupation) AS numSelection FROM food_customer f JOIN ' . $this->table_name . ' m ON f.Cust_ID = m.Cust_ID WHERE m.favourite_brand = "' . $this->store_name . '" GROUP BY occupation';
		return $this->get_dataset($sql, 0);
	}
        
	//Return dataset to produce canvas js chart
	private function get_dataset($sql, $id) {
		$dataPoints = array();
		$stmt = $this->pdo->prepare($sql);

	    if($stmt->execute()) {
	    	$result = $stmt->fetchAll(\PDO::FETCH_OBJ);
	    }  
            
            if(empty($this->totalRPDT)){
			$this->set_num_of_respondent();
            }
             foreach($result as $row){
	    	$row->numSelection = $this->conv_data_into_perc($row->numSelection);
	        array_push($dataPoints, array("label"=> $row->label, "y"=> $row->numSelection));
    	}
            
		if($id >= 1 && $id <= 2){
			$dataPoints = $this->arrange_dataset($dataPoints, $id);
                }
    	return json_encode($dataPoints, JSON_NUMERIC_CHECK);
	}
        
        private function set_num_of_respondent() {
        $sql = 	'SELECT COUNT(1) FROM ' . $this->table_name;	
        $this->totalRPDT = $this->exec_query_column($sql);
	}
        
        private function conv_data_into_perc($value) {
		if(empty($this->totalRPDT))
			$this->set_num_of_respondent();

		$result = $value / $this->totalRPDT * 100;
		$result = round($result);

		return $result;
	}
        
	private function arrange_dataset($array, $id) {

		$dataPoints = array();
		if($id == 1){
			$labelNames = array('None', 'Daily', 'Once every few days', 'Once a week', 'Biweekly', 'Monthly', 'Once a few month', 'Yearly');		
		} else if($id == 2){
			$labelNames = array('Less than RM10', 'RM11 to 20', 'RM21 to 30', 'RM31 to 40', 'RM41 to 50', 'RM50 to 100', 'More than RM100');		
		} else
			return;

		for($i = 0; $i < sizeof($labelNames); $i++) {

			$label = $labelNames[$i];
			foreach($array as $key => $value) {
				if($array[$key]['label'] == $label) {
					array_push($dataPoints, array("label"=> $value['label'], "y"=> $value['y']));
				}
			}
		}

		return $dataPoints;
	}
}

?>