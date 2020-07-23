 //Staff Service Rate
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataService.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var staffService = [];
			var count = [];

			for(var i in data) {
				staffService.push(data[i].staffService);
				count.push(data[i].count);
				 
			}

			var chartdata = {
				labels: staffService, 
				datasets : [
					{
						label: 'Staff Service Rating',
						backgroundColor: ["rgb(51, 102, 204)","rgb(255, 153, 0)","rgb(220, 57, 18)"],		 
						data: count
					}
				]
			};

			// Configuration options go here
            var option = {
                cutoutPercentage: 0
            };
           

			var ctx = $("#f21ServiceCht");
			var doughGraph = new Chart(ctx, {
				type: 'doughnut',
				data: chartdata,
				options: option
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});


//Ambience Rate
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataAmbience.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var ambience = [];
			var count = [];

			for(var i in data) {
				ambience.push(data[i].ambience + " star");
				count.push(data[i].count);
			}

			var chartdata = {
				labels: ambience,
				datasets : [
					{
						label: 'Ambience Rating',
						backgroundColor: "rgba(255, 205, 86, 0.8)",
						borderColor: 'rgba(200, 200, 200, 0.75)',
						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: count
					}
				]
			};

			var option = {
                scales: {
		    		xAxes:[{ticks:{
		    			beginAtZero:true
		    		}}]
		    	}
            };

			var ctx = $("#f21AmbCht");

			var barGraph = new Chart(ctx, {
				type: 'horizontalBar',
				data: chartdata,
				options: option
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});


//Avg Ambience Rate
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataAvgAmb.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var avgAmb = parseFloat(data.avg);
			var avgAmbDec = avgAmb.toFixed(1);
 			document.getElementById("f21avgAmb").innerHTML = avgAmbDec + " stars";
 			
		},
		error: function(data) {
			console.log(data);
		}
	});
});


//Product Quality
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataQuality.php",  
		method: "GET",
		success: function(data) {
			console.log(data);
			var productQuality = [];
			var countQuality = [];

			for(var i in data) {
				productQuality.push(data[i].productQuality + " star");
				countQuality.push(data[i].countQuality);
			}

			var chartdata = {
				labels: productQuality,
				datasets : [
					{
						label: 'Product Quality Reviews',
						backgroundColor: "rgba(255, 205, 86, 0.8)",
						borderColor: 'rgba(200, 200, 200, 0.75)',
						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: countQuality
					}
				]
			};

			var option = {
                scales: {
		    		xAxes:[{ticks:{
		    			beginAtZero:true
		    		}}]
		    	}
            };

			var ctx = $("#f21QualityCht");

			var prodGraph = new Chart(ctx, {
				type: 'horizontalBar',
				data: chartdata,
				options: option
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});


//Avg Product Quality
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataAvgProd.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var avgProd = parseFloat(data.avg);
			var avgProdDec = avgProd.toFixed(1);
 			document.getElementById("f21avgProd").innerHTML = avgProdDec + " stars";
 			
		},
		error: function(data) {
			console.log(data);
		}
	});
});



//Time Spend
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataTime.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var timeSpend = [];
			var countTime = [];

			for(var i in data) {
				timeSpend.push(data[i].timeSpend);
				countTime.push(data[i].countTime);
			}

			var chartdata = {
				labels: timeSpend,
				datasets : [
					{
						label: 'Time spend in store by Customers',
						backgroundColor: 'rgb(255, 99, 132)',
                    	borderColor: 'rgb(0, 64, 255)',
						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: countTime
					}
				]
			};

			var option = {
                scales: {
                yAxes: [{
                  ticks: {
                    beginAtZero: true
                  },
	              scaleLabel:{
	                display: true,
	                labelString: "No of Customers",
	              }
	            }]
              }
            };

			var ctx = $("#f21TimeCht");

			var timeGraph = new Chart(ctx, {
				type: 'line',
				data: chartdata,
				options: option
			});

			var compTime = $("#compf21TimeCht");
			var timeGraph = new Chart(compTime, {
				type: 'line',
				data: chartdata,
				options: option
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});


//Age Customer
var f21age = [];
var f21countAge = [];
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataAge.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			for(var x in data) {
				f21age.push(data[x].age);
				f21countAge.push(data[x].countAge);
 			}					 
		},
		error: function(data) {
			console.log(data);
		}
	});
});


 
//Money spent
$(document).ready(function(){
	$.ajax({
		url: "dataF21/dataMoney.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var moneySpend = [];
			var countMoney = [];
		
			for(var i in data) {
				moneySpend.push(data[i].moneySpend);
				countMoney.push(data[i].countMoney);
 			}

			var chartdata = {
				labels: moneySpend, 
				datasets : [
					{
						label: "Money Spend",
	                    backgroundColor: "rgba(255, 99, 132, 0.2)",
	                    borderColor: "rgba(255, 99, 132, 1)",	 
						data: countMoney
					}
					,
					{
	                    label: "Age Group",
	                    backgroundColor: "rgba(255, 159, 64, 0.2)",
	                    borderColor: "rgb(255, 159, 64)",
	                    data: f21countAge,
	                    type:"line"
                    } 
				]
		 
			};
			
			var option = {
				scales: {
		    		yAxes:[{ticks:{
		    			beginAtZero:true
		    		}}]
		    	}
			}
			

			var f21 = $("#f21MoneyCht");
			var f21moneyGph = new Chart(f21, {
				type: 'bar',
				data: chartdata,
				options: option,
			});

			var compfMoney = $("#compf21MoneyCht");
			var compfMoneyGph = new Chart(compfMoney, {
				type: 'bar',
				data: chartdata,
				options: option,
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});
