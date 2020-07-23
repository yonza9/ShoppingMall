<script type="text/javascript">

$(document).ready(function(){

    var c = getCookie("openModal"); //Get openModal cookie

    if(c == 'yes') {
		$("#fastfoodModal").modal();
		document.cookie = "openModal = no";
    }
});


function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}

function openFastFood(store_id) {
	switch(store_id) {
		case 1:
	    document.cookie = "class = mcdonald";
		break;
		case 2:
	    document.cookie = "class = morganfield";
		break;
		case 3:
	    document.cookie = "class = sushizanmai";
		break;
	}
	document.cookie = "openModal = yes";
	window.location.reload(false);				
}

</script>

<?php

if(isset($_COOKIE['class'])) {
	//Set fastfood class
	if($_COOKIE['class'] === 'mcdonald')
		$_COOKIE['fastfood'] = new McDonald($pdo);
	else if($_COOKIE['class'] === 'morganfield')
		$_COOKIE['fastfood'] = new Morganfields($pdo);
	else if($_COOKIE['class'] === 'sushizanmai')
		$_COOKIE['fastfood'] = new SushiZanmai($pdo);
}

?>