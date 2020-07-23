<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>3D model</title>
    </head>
    <link rel='stylesheet' id='stratum-style-css'  href='css/style8.css' type='text/css' media='all' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <body>
        <div class="container">
            <div class="video">
                <video id ="defaultvideo" autoplay loop = "loop">
                <source src="video/default.mp4" type="video/mp4" />
                Your browser does not support the video tag.
            </div>
              <div class="player-buttons1">
        <button id = "buttonleft" style="font-size:24px" onclick="MoveLeft()">Left <i class="fa fa-caret-square-o-left"></i></button>
              </div>
            <div class="player-buttons2">'
        <button id = "buttonright" style="font-size:24px" onclick="MoveRight()">Right <i class="fa fa-caret-square-o-right"></i></button>
            </div>
        <div class="player-buttons3">'
        <button id = "buttonback" style="font-size:24px" onclick="javascript:window.location.href='index.html';">Back <i class="fa fa-home"></i></button>
        </div>
        <div class="player-buttons4">'
        <button id = "buttonfloor" style="font-size:24px" onclick="javascript:window.location.href='floor/floor_selection.php';">Floor Selection <i class="fa fa-navicon"></i></button>
              </div>
        </video>
        </div>
        <?php
       
        ?>
        
        <script type="text/javascript"> 
var myVideo=document.getElementById("defaultvideo");
var buttonLeft=document.getElementById("buttonleft"); 
var buttonRight=document.getElementById("buttonright"); 
var check = 0;
function MoveLeft(){
    if(check == 0){
    myVideo.setAttribute('src', 'video/front-left.mp4');
    myVideo.removeAttribute('loop');
    myVideo.play();
    check = 1;
    buttonLeft.style.display = "none";
    return;
    }
    if(check == 2){
    myVideo.setAttribute('src', 'video/right-front.mp4');
    myVideo.play();
    check = 0;
    buttonRight.style.display = "inline";
    return;
    }
}
function MoveRight(){
    if(check == 1){
    myVideo.setAttribute('src', 'video/left-front.mp4');
    myVideo.play();
    check = 0;
    buttonLeft.style.display = "inline";
    return;
    }
    if(check == 0){
    myVideo.setAttribute('src', 'video/front-right.mp4');
    myVideo.removeAttribute('loop');
    myVideo.play();
    check = 2;
    buttonRight.style.display = "none";
    return;
    }
}
</script> 

    </body>
</html>
