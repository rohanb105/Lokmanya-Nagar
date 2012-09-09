<?php
if ($_GET['randomId'] != "mxQUTAQXuQX5CuBTOtFqGcJEa7PEimyTyPWP_yLwZ4_S2u2V19pPINuvCwfs1Y2l") {
    echo "Access Denied";
    exit();
}

// display the HTML code:
echo stripslashes($_POST['wproPreviewHTML']);

?>  
