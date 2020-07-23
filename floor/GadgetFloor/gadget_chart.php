<script type="text/javascript">

var subTitle = "Number of Respondents: <?php echo $_COOKIE['gadget']->get_num_of_respondent() ?>";

function loadChartProdType(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Product Selection";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title: {
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "pie", //change type to bar, line, area, pie, etc 
			indexLabel: "{label} - #percent%",
			yValueFormatString: "#'%'",   
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_prod_type(); ?>
		}]
	});
	chart.render();	
}

function loadChartStorAttr(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Store Attractions";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title: {
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "pie", //change type to bar, line, area, pie, etc 
			indexLabel: "{label} - #percent%",
			yValueFormatString: "#'%'",   
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_stor_attr(); ?>
		}]
	});
	chart.render();
}

function loadChartProdFeat(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Product Features";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title: {
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "pie", //change type to bar, line, area, pie, etc 
			indexLabel: "{label} - #percent%",
			yValueFormatString: "#'%'",
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_prod_feat(); ?>
		}]
	});
	chart.render();
}

function loadChartProdRate(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Product Reviews";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title: {
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
        axisX: {
           	suffix: " star"
        },
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "area", //change type to bar, line, area, pie, etc 
			toolTipContent: "{label} star: {y}%",
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_avg_prod(); ?>
		}]
	});
	chart.render();		
}

function loadChartServRate(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Service Reviews";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
        axisX: {
           	suffix: " star"
        },
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "area", //change type to bar, line, area, pie, etc
			toolTipContent: "{label} star: {y}%",
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_avg_serv(); ?>
		}]
	});
	chart.render();		
}

function loadChartCustVisit(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Customer Visits";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
      	axisX: {
           	reversed: true
      	},
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "bar", //change type to bar, line, area, pie, etc
			yValueFormatString: "#'%'",
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_cust_visit(); ?>
		}]
	});
	chart.render();
}


function loadChartCustSpend(eleName) {

	var chtTitle = "<?php echo $_COOKIE['gadget']->store_name ?> - Customer Spending";

	var chart = new CanvasJS.Chart(eleName, {
		animationEnabled: true,
		exportEnabled: true,
		theme: "light2", // "light1", "light2", "dark1", "dark2"
		title:{
			text: chtTitle
		},
      	subtitles: [{
        	text: subTitle,
        	fontSize: 20,
        	horizontalAlign: "left",
        	verticalAlign: "bottom"
      	}],
      	axisX: {
           	reversed: true
      	},
		axisY: {
			suffix: "%"
		},
		data: [{
			type: "bar", //change type to bar, line, area, pie, etc
			yValueFormatString: "#'%'",
			dataPoints: <?php echo $_COOKIE['gadget']->get_dataset_cust_spend(); ?>
		}]
	});
	chart.render();
}

</script>