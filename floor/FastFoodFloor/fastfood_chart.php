<script type="text/javascript">
    
   //test CanvasJS load
function loadChartPopularity(eleName){
    var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Restaurant Popularity";
    
    var chart1 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: <?php echo $_COOKIE['fastfood']->get_dataset_popularity(); ?>
	}]
});
chart1.render();
}

function loadChartAttraction(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Food Attraction";

	  var chart2 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_attraction(); ?>
	}]
});
chart2.render();
}


function loadChartRetention(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> -  Restaurant Retention";

	 var chart3 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_retention(); ?>
	}]
});
chart3.render();
}



function loadChartfavfood(eleName) {

            var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Most Popular Food";

            var chart5 = new CanvasJS.Chart(eleName, {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: chtTitle
	},
	data: [{
		type: "column",
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <?php echo $_COOKIE['fastfood']->get_dataset_popularfood(); ?>
		
	}]
});
chart5.render();

}

function loadChartfavdrink(eleName) {

            var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Most Popular Drink";

            var chart6 = new CanvasJS.Chart(eleName, {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: chtTitle
	},
	data: [{
		type: "column",
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <?php echo $_COOKIE['fastfood']->get_dataset_populardrink(); ?>
		
	}]
});
chart6.render();

}

function loadChartcrowded(eleName) {

            var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Most Crowded Time";

            var chart7 = new CanvasJS.Chart(eleName, {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: chtTitle
	},
	data: [{
		type: "column",
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <?php echo $_COOKIE['fastfood']->get_dataset_crowdedtime(); ?>
		
	}]
});
chart7.render();

}

function loadChartCustSpend(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> - Customer Spending";

	 var chart8 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_cust_spend(); ?>
	}]
});
chart8.render();
}

function loadChartCustGender(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> -  Customer Gender";

	 var chart9 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_gender(); ?>
	}]
});
chart9.render();
}

function loadChartCustAge(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> -  Customer Age Range";

	 var chart10 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_retention(); ?>
	}]
});
chart10.render();
}

function loadChartCustRace(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> -  Customer Races";

	 var chart11 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_races(); ?>
	}]
});
chart11.render();
}

function loadChartCustJob(eleName) {

	var chtTitle = "<?php echo $_COOKIE['fastfood']->store_name ?> -  Customer Occupation";

	 var chart12 = new CanvasJS.Chart(eleName, {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: chtTitle
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints:<?php echo $_COOKIE['fastfood']->get_dataset_job(); ?>
	}]
});
chart12.render();
}

</script>