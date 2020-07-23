<?php

class Gadget {
	public $store_name;
	public $location;
	public $image;
	public $table_name;
	protected $pdo;
	private $totalRPDT;
	private $arrProdFeat;
	private $totalProdFeatData;

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

	private function print_star($sql) {

		$avg_val = 0;
		$stmt = $this->pdo->prepare($sql);

        if($stmt->execute()){
            $avg_val = $stmt->fetchColumn();
        }
        $avg_val = round($avg_val, 1);

		for($i = 1; $i <= 5; $i++) {
			if($i < $avg_val)
				echo '<span class="fa fa-star checked"></span>'; //Print Fill Star
			else {
				if($avg_val - ($i - 1) >= 0.5 && $avg_val - ($i - 1) < 1)
          			echo '<span class="fa fa-star-half-o checked"></span>'; //Print Half-Fill Star
				else
					echo '<span class="fa fa-star"></span>'; //Print Non-Fill Star
			}          
		}
		          
		echo '&nbsp&nbsp<strong>' . $avg_val . ' Stars</strong>';

	}

	public function print_star_avg_rate_prod() {
		$sql = 'SELECT AVG(varRateProd) FROM ' . $this->table_name;
		$this->print_star($sql);
	}

	public function print_star_avg_rate_serv() {
        $sql = 'SELECT AVG(varRateServ) FROM ' . $this->table_name;
        $this->print_star($sql);
	}

	public function print_all_prod_feat_bar() {
		if(empty($this->arrProdFeat))
			$this->set_arr_of_prod_feat();

        foreach($this->arrProdFeat as $key => $value) {

        	echo '<div class="row">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
                    <h6>' . $value['label'] . ':</h6>
                    <div class="col-md-10 align-self-center">
                      <div class="progress" style="width: 30%;">
                        <div class="progress-bar" role="progressbar" style="width: ' . $this->conv_data_into_perc($value['y']) . '%" 
                        aria-valuemin="0" aria-valuemax="100">' . $this->conv_data_into_perc($value['y']) . '%</div>
                      </div>
                    </div>  
                  </div></p>';
		}
	}

	public function get_main_prod_type() {
		$sql = 'SELECT varType FROM ' . $this->table_name . ' GROUP BY varType ORDER BY COUNT(1) DESC LIMIT 1';
		return $this->exec_query_column($sql);		
	}

	public function get_main_stor_attr() {
		$sql = 'SELECT varAttract FROM ' . $this->table_name . ' GROUP BY varAttract ORDER BY COUNT(1) DESC LIMIT 1';
		return $this->exec_query_column($sql);
	}

	public function get_main_prod_feat() {
		if(empty($this->arrProdFeat))
			$this->set_arr_of_prod_feat();

		$columnNamesMax = array();
		$max = max(array_column($this->arrProdFeat, 'y'));

		foreach($this->arrProdFeat as $key => $value) {
			if($this->arrProdFeat[$key]['y'] == $max) {
				array_push($columnNamesMax, $value['label']);
			}
		}

		$result = implode(', ', $columnNamesMax);
		return $result;
	}	

	//Return dataset to produce canvas js chart
	private function get_dataset($sql, $id) {
		$dataPoints = array();
		$stmt = $this->pdo->prepare($sql);

	    if($stmt->execute()) {
	    	$result = $stmt->fetchAll(\PDO::FETCH_OBJ);
	    }

		if(empty($this->totalRPDT))
			$this->set_num_of_respondent();    
			
	    foreach($result as $row){
	    	$row->numSelection = $this->conv_data_into_perc($row->numSelection);
	        array_push($dataPoints, array("label"=> $row->label, "y"=> $row->numSelection));
    	}

		if($id >= 1 && $id <= 2)
			$dataPoints = $this->arrange_dataset($dataPoints, $id);

    	return json_encode($dataPoints, JSON_NUMERIC_CHECK);
	}

	//Return product variety dataset
	public function get_dataset_prod_type() {
		$sql = 'SELECT varType AS label, COUNT(varType) AS numSelection FROM ' . $this->table_name . ' GROUP BY varType';
		return $this->get_dataset($sql, 0);
	}

	//Return store attractions dataset
	public function get_dataset_stor_attr() {
		$sql = 'SELECT varAttract AS label, COUNT(varAttract) AS numSelection FROM ' . $this->table_name . ' GROUP BY varAttract';
		return $this->get_dataset($sql, 0);
	}

	//Return product features dataset
	public function get_dataset_prod_feat() {
		if(empty($this->arrProdFeat))
			$this->set_arr_of_prod_feat();

		$dataPoints = $this->arrProdFeat;
		foreach($dataPoints as $key => $value) {
  			$dataPoints[$key]['y'] = $this->conv_data_into_perc_feat($value['y']);
		}
		return json_encode($dataPoints, JSON_NUMERIC_CHECK);
	}

	//Return product rating dataset
	public function get_dataset_avg_prod() {
		$sql = 'SELECT varRateProd AS label, COUNT(varRateProd) AS numSelection FROM ' . $this->table_name . ' GROUP BY varRateProd';
		return $this->get_dataset($sql, 0);
	}

	//Return service rating dataset
	public function get_dataset_avg_serv() {
		$sql = 'SELECT varRateServ AS label, COUNT(varRateServ) AS numSelection FROM ' . $this->table_name . ' GROUP BY varRateServ';
		return $this->get_dataset($sql, 0);
	}

	//Return customer visits dataset
	public function get_dataset_cust_visit() {
		$sql = 'SELECT varVisit AS label, COUNT(varVisit) AS numSelection FROM ' . $this->table_name . ' GROUP BY varVisit';
		return $this->get_dataset($sql, 1);
	}

	//Return customer spend dataset
	public function get_dataset_cust_spend() {
		$sql = 'SELECT varSpend AS label, COUNT(varSpend) AS numSelection FROM ' . $this->table_name . ' GROUP BY varSpend';
		return $this->get_dataset($sql, 2);
	}

	private function set_num_of_respondent() {
        $sql = 	'SELECT COUNT(1) FROM ' . $this->table_name;	
        $this->totalRPDT = $this->exec_query_column($sql);
	}

	public function get_num_of_respondent() {
		if(empty($this->totalRPDT))
			$this->set_num_of_respondent();

        return $this->totalRPDT;
	}

	private function set_arr_of_prod_feat() {
		$this->arrProdFeat = array();
		$this->totalProdFeatData = 0;
		$columnNames = array('battery', 'storage', 'look', 'hardware', 'camera', 'gui', 'warranty', 'part');
		$labelNames = array('Battery', 'Storage', 'Look', 'Hardware', 'Camera', 'GUI', 'Warranty', 'Parts');

		for($i = 0; $i < sizeof($columnNames); $i++) {
			$name = $columnNames[$i];
			$label = $labelNames[$i];
			$sql = 'SELECT SUM(' . $name . ') FROM ' . $this->table_name . 'feature';
			$result = $this->exec_query_column($sql);
			array_push($this->arrProdFeat, array("label"=> $label, "y"=> $result));
			$this->totalProdFeatData += $result;
		}
	}

	private function conv_data_into_perc($value) {
		if(empty($this->totalRPDT))
			$this->set_num_of_respondent();

		$result = $value / $this->totalRPDT * 100;
		$result = round($result);

		return $result;
	}

	private function conv_data_into_perc_feat($value) {
		if(empty($this->arrProdFeat))
			$this->set_arr_of_prod_feat();

		$result = $value / $this->totalProdFeatData * 100;
		$result = round($result);

		return $result;
	}

	private function arrange_dataset($array, $id) {

		$dataPoints = array();
		if($id == 1){
			$labelNames = array('None', '1 week', '1 month', 'Half a year', '1 year');		
		} else if($id == 2){
			$labelNames = array('RM0 - 1000', 'RM1001 - 2000', 'RM2001 - 3000', 'RM3001 - 4000', 'RM4001 - 5000', 'Over RM5000');		
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