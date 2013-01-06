
$(document).ready(function () { 
     
    $('#menunav li').hover(
        function openmenu() {
            //show its submenu
            $('ul', this).slideDown(100);
 
        }, 
        function closemenu() {
            //hide its submenu
            $('ul', this).slideUp(100);         
        }
    )
     
});


//<![CDATA[
//function SDMenu() {	
	var SDMenu;
	window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
	}
//}

//]]>

setInterval(jQuery('.blinking').toggle, 1500 );