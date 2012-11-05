
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

// for image slider
$(document).ready(function() {
		
		var options = {};
	
		if (document.location.search) {
			var array = document.location.search.split('=');
			var param = array[0].replace('?', '');
			var value = array[1];
			
			if (param == 'animation') {
				options.animation = value;
			}
			else if (param == 'type_navigation') {
				if (value == 'dots_preview') {
					$('.border_box').css({'marginBottom': '40px'});
					options['dots'] = true;
					options['preview'] = true;
				}
				else {
					options[value] = true;
					if (value == 'dots') $('.border_box').css({'marginBottom': '40px'});
				}
			}
		}
		
		$('.box_skitter_large').skitter(options);
		
		// Highlight
	//	$('pre.code').highlight({source:1, zebra:1, indent:'space', list:'ol'});
		
	});
	
/* For Error on IE */
/*
$(document).ready(function() {
$(".newsticker-jcarousellite").jCarouselLite({
        vertical: true,
        visible: 3,
        auto:500,
        speed:500
    })
});

*/
//<![CDATA[
function sdmenu() {	
	var SDMenu;
	window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
	}
}

//]]>

//$(document).ready(function(){
//$('#vscroller').vscroller({newsfeed:'news/news.xml', speed:1000,stay:2000,cache:false});
//});
