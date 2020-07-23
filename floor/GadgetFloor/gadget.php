<?php
include 'db_connection.php';
include 'class/Gadget.class.php';
include 'class/Machines.class.php';
include 'class/Samsung.class.php';
include 'class/Huawei.class.php';
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

<title>2nd Floor</title>
</head>

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand active" href="#">Electronic Gadget (2nd Floor)</a>
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
include 'gadget_init_class.php'; 
if(isset($_COOKIE['gadget'])) { include 'gadget_chart.php'; }
?>

<div class="floor center" style="background-image: url('picture/gadget_floor.png');"> 
	<input id="m1" type="image" src="picture/marker-icon.png" style="transform: translate(400px, 200px); " data-toggle="tooltip" data-placement="top" onclick="openGadgetModal(1);" />
	<input id="m2" type="image" src="picture/marker-icon.png" style="transform: translate(1025px, 200px); " data-toggle="tooltip" data-placement="top" onclick="openGadgetModal(2);" />
	<input id="m3" type="image" src="picture/marker-icon.png" style="transform: translate(1225px, 525px); " data-toggle="tooltip" data-placement="top" onclick="openGadgetModal(3);" />
</div>

<!--Gadget Store Info Modal-->
<div id="gadgetModal" class="modal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">

			<div class="modal-header">
		        <h5 class="modal-title">
		        	<p><?php echo $_COOKIE['gadget']->store_name; ?></p>
              <div class="center">
		        	 <img src= <?php echo '"' . $_COOKIE['gadget']->image . '"'; ?> height="480" width="640" class="img-fluid" alt="Store image">
              </div>		        	
		        </h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          	<span aria-hidden="true">&times;</span>
		      	</button>
		    </div>

		    <div class="modal-body">
		        <p><strong>Location: </strong>
		        	<?php echo $_COOKIE['gadget']->location; ?>
            </p> 

		        <p><strong>Main Product: </strong>
              <?php echo $_COOKIE['gadget']->get_main_prod_type(); ?>
		          &nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#prodTypeModal" class="btn btn-outline-info btn-sm" value="View" />
		        </p>

		        <p><strong>Main Reason To Visit:</strong>
		        	<?php echo $_COOKIE['gadget']->get_main_stor_attr(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#storAttrModal" class="btn btn-outline-info btn-sm" value="View" />
            </p>

		        <p><strong>Most Preferred Product Feature:</strong>
              <?php echo $_COOKIE['gadget']->get_main_prod_feat(); ?>
		        	&nbsp&nbsp
              <input type="button" data-toggle="modal" data-target="#prodFeatModal" class="btn btn-outline-info btn-sm" value="View" />
		          <input id="btnProdFeatExpand" type="button" class="btn btn-outline-info btn-sm" value="Expand" /></p>
              <div id="divProdFeat" style="display: none;">
                <?php $_COOKIE['gadget']->print_all_prod_feat_bar(); ?>
              </div>

		        <p><strong>Product Rating: </strong>
		          	<?php $_COOKIE['gadget']->print_star_avg_rate_prod(); ?>
		          	&nbsp&nbsp
                <input type="button" data-toggle="modal" data-target="#prodRateModal" class="btn btn-outline-info btn-sm" value="Reviews" />
		        </p> 

		        <p><strong>Service Rating: </strong>
		          	<?php $_COOKIE['gadget']->print_star_avg_rate_serv(); ?>
		          	&nbsp&nbsp
                <input type="button" data-toggle="modal" data-target="#servRateModal" class="btn btn-outline-info btn-sm" value="Reviews" />
		        </p>
		         
             <input type="button" data-toggle="modal" data-target="#custVisitModal" class="btn btn-primary" value="Customer Visits" />
             <input type="button" data-toggle="modal" data-target="#custSpendModal" class="btn btn-primary" value="Customer Spending" />
		     </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>    
		      </div>

  		</div>
  	</div>
</div>

<!--Product Type Modal-->
<div id="prodTypeModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Product Selection
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

<!--Product Feature Modal-->
<div id="prodFeatModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Product Features
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

<!--Product Rating Modal-->
<div id="prodRateModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Product Rating
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

<!--Service Rating Modal-->
<div id="servRateModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Service Rating
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


<!--Customer Visit Modal-->
<div id="custVisitModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title">
           Customer Visits
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

$('#prodTypeModal').on('shown.bs.modal', function(){ loadChartProdType(chartContainer1); });
$('#storAttrModal').on('shown.bs.modal', function(){ loadChartStorAttr(chartContainer2); });
$('#prodFeatModal').on('shown.bs.modal', function(){ loadChartProdFeat(chartContainer3); });
$('#prodRateModal').on('shown.bs.modal', function(){ loadChartProdRate(chartContainer4); });
$('#servRateModal').on('shown.bs.modal', function(){ loadChartServRate(chartContainer5); });
$('#custVisitModal').on('shown.bs.modal', function(){ loadChartCustVisit(chartContainer6); });
$('#custSpendModal').on('shown.bs.modal', function(){ loadChartCustSpend(chartContainer7); });

var div1 = document.getElementById('divProdFeat');
var btn1 = document.getElementById('btnProdFeatExpand');
$(btn1).click(function(){
    if (div1.style.display === "none") {
        div1.style.display = "block";
        btn1.value = "Close";
    } else {
        div1.style.display = "none";
        btn1.value = "Expand";
    }      
});

//Insert your logo picture src here (must be in square size)
$("#m1").tooltip({title: "<img class='img-thumbnail' src='picture/samsung_logo.png' alt='Logo' />", html: true}); 
$("#m2").tooltip({title: "<img class='img-thumbnail' src='picture/machines_logo.png' alt='Logo' />", html: true}); 
$("#m3").tooltip({title: "<img class='img-thumbnail' src='picture/huawei_logo.png' alt='Logo' />", html: true}); 

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