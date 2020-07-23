<?php
include 'db_connection.php';
include 'class/FastFood.class.php';
include 'class/McDonald.class.php';
include 'class/Morganfields.class.php';
include 'class/SushiZanmai.class.php';
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- stars -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--CanvasJS library-->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>

<style>
.floor{
  height: 900px;
  width: 1800px;
  background-repeat: no-repeat;
  background-size: contain;
}

.tooltip-inner {
  background-color: #d3d3d3 !important;
}

.img-thumbnail {
  height: 150px; 
  width: 150px;
}

.checked{
  color: orange;
}

.modal {
  overflow-y: inherit;
}

.modal-full {
    min-width: 100%;
    margin: 0;
}

.modal-full .modal-content {
    min-height: 100vh;
}

.center {
    margin: auto;
    width: 90%;
    padding: 10px;
}
</style>

<title>Ground Floor</title>
</head>

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand active" href="#">Fast Food (Ground Floor)</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="../../index.html">Home</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Floor Selection
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="../FastFoodFloor/fastfood.php">Ground Floor</a>
          <a class="dropdown-item" href="../FashionFloor/fashion.html">1st Floor</a>
          <a class="dropdown-item" href="../GadgetFloor/gadget.php">2nd Floor</a>
        </div>
      </li>      
    </ul>    
  </div>
</nav>

<body>
    
<?php
include 'fastfood_init_class.php'; 
if(isset($_COOKIE['fastfood'])) { include 'fastfood_chart.php'; }
?>

<div class="floor center" style="background-image: url('picture/fastfood_floor.png');"> 
    <input id="m1" type="image" src="picture/marker-icon.png" style="transform: translate(400px, 130px); " data-toggle="tooltip" data-placement="top" onclick="openFastFood(1);" /> 
  <input id="m2" type="image" src="picture/marker-icon.png" style="transform: translate(1050px, 215px); " data-toggle="tooltip" data-placement="top" onclick="openFastFood(2);" /> 
  <input id="m3" type="image" src="picture/marker-icon.png" style="transform: translate(1250px, 430px); " data-toggle="tooltip" data-placement="top" onclick="openFastFood(3);" />
</div>

<!--FastFood Store Info Modal-->
<div id="fastfoodModal" class="modal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">

			<div class="modal-header">
		        <h5 class="modal-title">
		        	<p><?php echo $_COOKIE['fastfood']->store_name; ?></p>
              <div class="center">
		        	 <img src= <?php echo '"' . $_COOKIE['fastfood']->image . '"'; ?> height="480" width="640" class="img-fluid" alt="Store image">
              </div>		        	
		        </h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          	<span aria-hidden="true">&times;</span>
		      	</button>
		    </div>

		    <div class="modal-body">
		        <p><strong>Location: </strong>
		        	<?php echo $_COOKIE['fastfood']->location; ?>
            </p> 

		        <p><strong>Popularity among Fast Food: </strong>
              <?php echo $_COOKIE['fastfood']->get_popularity(); ?>
		          &nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#popularityModal" class="btn btn-outline-info btn-sm" value="View" />
		        </p>

		        <p><strong>Main Attraction:</strong>
		        	<?php echo $_COOKIE['fastfood']->get_main_stor_attr(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#storAttrModal" class="btn btn-outline-info btn-sm" value="View" />
            </p>
            
             <p><strong>Customer Retention:</strong>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#retentionModal" class="btn btn-outline-info btn-sm" value="View" />
            </p>

		        <p><strong>Most Popular Food:</strong>
              <?php echo $_COOKIE['fastfood']->get_main_prod1_feat(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#favFoodModal" class="btn btn-outline-info btn-sm" value="View" />
		          <input id="btnProdFeatExpand" type="button" class="btn btn-outline-info btn-sm" value="Expand" /></p>
              <div id="divProdFeat1" style="display: none;">
               
              </div>
              
               <p><strong>Most Popular Drink:</strong>
              <?php echo $_COOKIE['fastfood']->get_main_prod2_feat(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#favDrinkModal" class="btn btn-outline-info btn-sm" value="View" />
		          <input id="btnProdFeatExpand" type="button" class="btn btn-outline-info btn-sm" value="Expand" /></p>
              <div id="divProdFeat2" style="display: none;">
                
              </div>
               
                <p><strong>Most Crowded Time:</strong>
                     <?php echo $_COOKIE['fastfood']->get_crowdedtime(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#crowdedModal" class="btn btn-outline-info btn-sm" value="View" />
            </p>
             <input type="button" data-toggle="modal" data-target="#custSpendModal" class="btn btn-primary" value="Customer Spending" />
             <input type="button" data-toggle="modal" data-target="#custDemographic" class="btn btn-primary" value="Customer Demographic" />
             
		     </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
		      </div>

  		</div>
  	</div>
</div>

<!--Popularity Modal-->
<div id="popularityModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
          Popularity among customer
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer1" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Store Attraction Modal-->
<div id="storAttrModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Store Attractions
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer2" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Customer Retention Modal-->
<div id="retentionModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Customer Retention Rate
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer3" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Favourite Food Modal-->
<div id="favFoodModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
          Favourite Food among customer
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer4" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Favourite Drink Modal-->
<div id="favDrinkModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Favourite Drink among Customer
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer5" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Most Crowded Time Modal-->
<div id="crowdedModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
          Most Crowded Time
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer6" class="center" style="height: 400px;"></div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
      </div>

    </div>
  </div>
</div>

<!--Customer Spend Modal-->
<div id="custSpendModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Customer Spending
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer7" class="center" style="height: 400px;"></div>      
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<!--Customer Demographic Modal-->
<div id="custDemographic" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Customer Demographic Info
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body" style="height: 500px">
        <div id="chartContainer8" class="center" style="height: 400px;"></div>      
      </div>
        
        <div class="modal-body" style="height: 500px">
        <div id="chartContainer9" class="center" style="height: 400px;"></div>      
      </div>
        
         <div class="modal-body" style="height: 500px">
        <div id="chartContainer10" class="center" style="height: 400px;"></div>      
      </div>
        
         <div class="modal-body" style="height: 500px">
        <div id="chartContainer11" class="center" style="height: 400px;"></div>      
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<script type="text/javascript">

var modal_counter = 1;

$(document).ready(function(){
    
//Modal Vertical Scroll Bar Adjustment Start Here
$('.modal').on('shown.bs.modal', function () {
    modal_counter++;
});
$('.modal').on('hidden.bs.modal', function () {
    modal_counter--;
    if(modal_counter == 1){
        $('body').addClass('modal-open');
    }
    else{
        $('body').removeClass('modal-open');
    }
});
//Modal Vertical Scroll Bar Adjustment End Here 

$('#popularityModal').on('shown.bs.modal', function(){ loadChartPopularity(chartContainer1); });
$('#storAttrModal').on('shown.bs.modal', function(){ loadChartAttraction(chartContainer2); });
$('#retentionModal').on('shown.bs.modal', function(){ loadChartRetention(chartContainer3); });
$('#favFoodModal').on('shown.bs.modal', function(){ loadChartfavfood(chartContainer4); });
$('#favDrinkModal').on('shown.bs.modal', function(){ loadChartfavdrink(chartContainer5); });
$('#crowdedModal').on('shown.bs.modal', function(){ loadChartcrowded(chartContainer6); });
$('#custSpendModal').on('shown.bs.modal', function(){ loadChartCustSpend(chartContainer7); });
$('#custDemographic').on('shown.bs.modal', function(){ loadChartCustGender(chartContainer8); });
$('#custDemographic').on('shown.bs.modal', function(){ loadChartCustAge(chartContainer9); });
$('#custDemographic').on('shown.bs.modal', function(){ loadChartCustRace(chartContainer10); });
$('#custDemographic').on('shown.bs.modal', function(){ loadChartCustJob(chartContainer11); });

  //Insert your logo picture src here (must be in square size)
  $("#m1").tooltip({title: "<img class='img-thumbnail' src='picture/mcdonald_logo.png' alt='Logo' />", html: true}); 
  $("#m2").tooltip({title: "<img class='img-thumbnail' src='picture/morganfields_logo.png' alt='Logo' />", html: true}); 
  $("#m3").tooltip({title: "<img class='img-thumbnail' src='picture/sushizanmai_logo.jpg' alt='Logo' />", html: true}); 

});

//Floor Size Adjustment Start Here
var floorName = ".floor";

var floor = {
  width: 1800,
  height: 900,  
  heightRatio: 900/1800,
  marker_id: ["#m1", "#m2", "#m3"],
  marker_x: [
  parseInt($("#m1").css('transform').split(',')[4]),
  parseInt($("#m2").css('transform').split(',')[4]),
  parseInt($("#m3").css('transform').split(',')[4])
  ],
  marker_y: [
  parseInt($("#m1").css('transform').split(',')[5]),
  parseInt($("#m2").css('transform').split(',')[5]),
  parseInt($("#m3").css('transform').split(',')[5])
  ]
};

function changeFloorSize() {

  var window_width = $(window).width();
  var window_height = $(window).height();

  var width, height;
  var width_diff = floor.width - window_width;
  var move_x = (width_diff > 0) ? true : false; 

  if(move_x) {
    width = window_width;
    height = floor.height - (width_diff * floor.heightRatio);
  } else {
    width = floor.width;
    height = floor.height;
  }

  $(floorName).css({
    "width": width,
    "height": height
  });

  var x = new Array(3);
  var y = new Array(3);
  var transform;
  
  for (var i = 0; i < 3; i++) {
    if(move_x) {
      x[i] = moveMarker(floor.marker_x[i], width / floor.width);
      y[i] = moveMarker(floor.marker_y[i], height / floor.height);
    } else {
      x[i] = floor.marker_x[i];
      y[i] = floor.marker_y[i];
    }

    transform = x[i] + "px, " + y[i] + "px";
    $(floor.marker_id[i]).css('transform', 'translate(' + transform + ')');
  }
}

function moveMarker(value, ratio) {
  var result = 0;
  result = parseInt(value * ratio);
  return result;
}

window.addEventListener('resize', changeFloorSize);
changeFloorSize();
//Floor Size Adjustment End Here

</script>

</body>
</html>