<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
.modal-full {
    min-width: 100%;
    margin: 0;
}

.modal-full .modal-content {
    min-height: 100vh;
}

input.img {
  height: 300px;
  width: 660px;
  transition: opacity 0.5s;
}

input.img:hover  {
  opacity: 0.5;
}

.center {
    margin: auto;
    width: 90%;
    padding: 10px;
}

hr {
  border: solid 1px dimgrey;
}

a.btn {
  color: white;
}
</style>
  
<title>Floor Selection</title>
</head>

<body>

<div class="container">
<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="floorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Floor Selection</h5>
        <a class="btn btn-primary" href="../index.html" style="float: right;">Back To Home Page</a>
      </div>
      <div class="modal-body">
        <div class="container-fluid">

          <div class="row">

            <div class="row">
              <div class="col-8 col-sm-10">
                <h3>Ground Floor</h3>
              </div>
              <div class="col-8 col-sm-10">          
                <h6>Category: <i>Fast Food</i></h6>
              </div>
            </div>

              <input id="img1" type="image" class="img center" src="../img/fastfood_floor_panel.png" onclick="floorRedirect(1);" />
            
        </div>

        <hr>

          <div class="row">

            <div class="row">
              <div class="col-8 col-sm-10">
                <h3>First Floor</h3>
              </div>
              <div class="col-8 col-sm-10">          
                <h6>Category: <i>Fashion</i></h6>
              </div>
            </div>

              <input id="img2" type="image" class="img center" src="../img/fashion_floor_panel.png" onclick="floorRedirect(2);" />
          </div>

        <hr>

          <div class="row">

            <div class="row">
              <div class="col-8 col-sm-10">
                <h3>Second Floor</h3>
              </div>
              <div class="col-8 col-sm-10">          
                <h6>Category: <i>Electronic Gadgets</i></h6>
              </div>
            </div>

              <input id="img3" type="image" class="img center" src="../img/fashion_floor_panel.png" onclick="floorRedirect(3);" />
          </div>

        </div>
      </div>

    </div>
  </div>
</div>

</div>

<script type="text/javascript">
    $(window).on('load',function(){
        $('#floorModal').modal({backdrop: 'static', keyboard: false});
    });

    function floorRedirect(id) {
      switch(id) {
        case 1:
        window.location.href = "FastFoodFloor/fastfood.php";
        break;
        case 2:
        window.location.href = "FashionFloor/fashion.html";
        break;
        case 3:
        window.location.href = "GadgetFloor/gadget.php";
        break;
      }
    }
</script>

</body>
</html>