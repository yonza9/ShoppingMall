<script type="text/javascript">

$(document).ready(function(){

    var c = getCookie("openModal"); //Get openModal cookie

    if(c == 'yes') {
		$("#gadgetModal").modal();
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

function openGadgetModal(store_id) {
	switch(store_id) {
		case 1:
	    document.cookie = "class = samsung";
		break;
		case 2:
	    document.cookie = "class = machines";
		break;
		case 3:
	    document.cookie = "class = huawei";
		break;
	}
	document.cookie = "openModal = yes";
	window.location.reload(false);				
}

</script>

<?php

if(isset($_COOKIE['class'])) {
	//Set gadget class
	if($_COOKIE['class'] === 'samsung')
		$_COOKIE['gadget'] = new Samsung($pdo);
	else if($_COOKIE['class'] === 'machines')
		$_COOKIE['gadget'] = new Machines($pdo);
	else if($_COOKIE['class'] === 'huawei')
		$_COOKIE['gadget'] = new Huawei($pdo);
}

?>