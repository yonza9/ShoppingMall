 //Staff Service Rate
$(document).ready(function(){
	$.ajax({
		url: "dataPadini/dataService.php",
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
           

			var ctx = $("#padServiceCht");
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
		url: "dataPadini/dataAmbience.php",
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

			var ctx = $("#padAmbCht");

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
		url: "dataPadini/dataAvgAmb.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var avgAmb = parseFloat(data.avg);
			var avgAmbDec = avgAmb.toFixed(1);
 			document.getElementById("padavgAmb").innerHTML = avgAmbDec + " stars";
 			
		},
		error: function(data) {
			console.log(data);
		}
	});
});



//Product Quality
$(document).ready(function(){
	$.ajax({
		url: "dataPadini/dataQuality.php",  
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

			var ctx = $("#padQualityCht");

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
		url: "dataPadini/dataAvgProd.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var avgProd = parseFloat(data.avg);
			var avgProdDec = avgProd.toFixed(1);
 			document.getElementById("padavgProd").innerHTML = avgProdDec + " stars";
 			
		},
		error: function(data) {
			console.log(data);
		}
	});
});



//Time Spend
$(document).ready(function(){
	$.ajax({
		url: "dataPadini/dataTime.php",
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

			var ctx = $("#padTimeCht");
			var timeGraph = new Chart(ctx, {
				type: 'line',
				data: chartdata,
				options: option
			});

			var time = $("#comppadTimeCht");
			var ctimeGraph = new Chart(time, {
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
var padage = [];
var padcountAge = [];
$(document).ready(function(){
	$.ajax({
		url: "dataPadini/dataAge.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			for(var x in data) {
				padage.push(data[x].age);
				padcountAge.push(data[x].countAge);
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
		url: "dataPadini/dataMoney.php",
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
	                    data: padcountAge,
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
			

			var pad = $("#padMoneyCht");
			var padmoneyGph = new Chart(pad, {
				type: 'bar',
				data: chartdata,
				options: option,
			});


			var money = $("#comppadMoneyCht");
			var cMoneyGph = new Chart(money, {
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