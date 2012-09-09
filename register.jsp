<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Lokmanya Nagar</title>
<SCRIPT language=JavaScript src="scripts/jquery.js" type=text/javascript></SCRIPT>
<SCRIPT language=JavaScript src="scripts/validation.js" type=text/javascript></SCRIPT>
<SCRIPT language=JavaScript src="scripts/jquery_funcs.js" type=text/javascript></SCRIPT>
<LINK href="css/stylesheet.css" type=text/css rel=stylesheet>
<LINK href="css/menu_style.css" type=text/css rel=stylesheet>
<!--<LINK href="newsStyleSheet.css" type=text/css rel=stylesheet>-->
</head>
<body class="mbg1">

<table width="1080" align ="center">

        <tr>
        	<td width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#774F2D" >
    			<img src="images/logo.jpg" width="290" height="64" align="left"/>
    		</td>
  		</tr>
	</table>&nbsp;
<!--	<table width="1080" border="0" cellspacing="0" cellpadding="0" align="center">
    	<td class="menunav">
      	<tr>
        	<td align="center" valign="top">
			<ul id ="menunav">
        		<li><a href="home.html" title="HOME">HOME</a></li>
        		<li><a href="#" title="FESTIVALS">FESTIVALS</a>
        	<ul>
            	<li><a href="republicday.html" title="Republic Day">Republic Day</a></li>
            	<li><a href="holi.html" title="Holi">Holi</a></li>
            	<li><a href="independenceday.html" title="Independance Day">Independance Day</a></li>
                <li><a href="gokulashtami.html" title="Gokulashtami">Gokulashtami</a></li>
            	<li><a href="ganeshotsav.html" title="Ganeshotsav">Ganeshotsav</a></li>
            	<li><a href="dassera.html" title="Dassera">Dassera</a></li>
                <li><a href="kojagiri.html" title="Kojagiri Poornima">Kojagiri Poornima</a></li>
            	<li><a href="diwali.html" title="Diwali">Diwali</a></li>
        	</ul>
            <div class="clear"></div>
    	</li>
        <li><a href="#" title="COMMITEES">COMMITEES</a>
        <ul>
            	<li><a href="mngcommittee.html" title="Managing Committee">Managing Committee</a></li>
            	<li><a href="lokmanyamandal.html" title="Lokmanya Mandal">Lokmanya Mandal</a></li>
            	<li><a href="bhaginimandal.html" title="Bhagini Mandal">Bhagini Mandal</a></li>
        	</ul>
            <div class="clear"></div>
        </li>
        <li><a href="#" title="AMENITIES">AMENITIES</a>
        <ul>
            	<li><a href="bighall.html" title="Lokmanya Nagar Sabhagriha">Lokmanya Nagar Sabhagriha</a></li>
            	<li><a href="smallhall.html" title="Kailasvasi Tatyasaheb Oak Sabhagriha">Kailasvasi Tatyasaheb Oak Sabhagriha</a></li>
        	</ul>
            <div class="clear"></div>
        </li>
        <li><a href="emergency.html" title="EMERGENCY">EMERGENCY</a></li>
		<li><a href="aboutus.html" title="ABOUT US">ABOUT US</a></li>
		</ul>
		</td>
      </tr>
    </td>
</table>&nbsp; -->
<tr>
</tr>
<table width="1080" align ="center" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFC58A">
  <tr>
    <td align="center" width="100%" border="0" cellspacing="0" cellpadding="0" >
    <img src="images/flash-image.jpg" width="700" height="115" />
    </td>
  </tr>
</table>&nbsp;
<table width="1080" align ="center" border="0" cellspacing="0" cellpadding="0">
    <td align="center" valign="top" width="10%" >
       <img src='images/Sthapana.jpg' border=0>               
    </td>
	<TD width = "80%" valign="top">
    	<table width="100%" cellspacing="3" cellpadding="0">
	<!--<tr>-->
         <td width = "80%" align="center">
    			<h1 class="logintext">Register Member</h1>
    			<p> Required fields are marked with an asterisk ( <abbr class="req" title="required">*</abbr> ).</p>
    			<% 
					String success = (String) request.getParameter("success");
					if (success != null) {
						if (success.equals("true")) {
							%>
							<script>alert('Registration Successful!')</script>
						<% } else {%>
							<script>alert('There is some problem with registration.Please try again!')</script>
						<% }
					}
				%>
    			<form action="LoginServlet.do" method="post" id = "frmMain">
    			<table>
    				<tr>
    					<td class="username" align="left"><label for="firstname">First Name <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="First Name" id="firstName"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left">Middle Name :</td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Middle Name" id = "middleName"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left"><label for="lastname">Last Name <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Last Name" id = "lastName"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left"><label for="emailId">Email Id <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Email Id" id="email" /></td>
    				</tr>
                    <tr>
    					<td class="username" align="left"><label for="cnfEmailId">Confirm Email Id <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Comfirm Email Id" id="confirmemail"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left"><label for="password">Password <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "password" name="Password" id = "password"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left"><label for="cnfpassword">Confirm Password <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "password" name="Confirm Password" id = "confirmPassword"/></td>
   					</tr>
    				<tr>
    					<td class="username" align="left"><label for="address">Address <abbr class="req" title="required">*</abbr>:</label> </td>
   					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="16" name="Address" id="address"></textarea></td>
    				</tr>
    				<tr>
    					<td class="username" align="left">Telephone No : </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Telephone No" id="telNo"/></td>
    				</tr>
    				<tr>
    					<td class="username" align="left"><label for="firstname">Mobile No <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" name="Mobile No" id="mobNo"/></td> &nbsp;&nbsp;&nbsp;&nbsp;
    				</tr>
    				<tr>
    					<td colspan="3" align="center"><input type="submit" onClick = "return validate();" value="Register"/>&nbsp;&nbsp;<a href="index.html" title="home"><b>Home</b></a></td>
    				</tr>
    			</table>
    			</form>
    			</td>
    			</tr>
    </table>

<!--		</TD>
        <td width="10%" height="100%" border="0" cellspacing="0" cellpadding="0" valign="top">
    		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="250" height="400" id="NewsScroller" align="center">
			<param name="allowScriptAccess" value="sameDomain" />
			<param name="movie" value="News/NewsScrollerFree.swf" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="News/NewsScrollerFree.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="250" height="400" name="NewsScrollerFree" valign="top" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
		</object>
    </td>
--></table>&nbsp;&nbsp;
   <table width="1080" align ="center" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td align="center" class="copyright">©Copyright 2012 Lokmanya Nagar C.H.S Ltd., All rights reserved.<br>Site optimised for 1280x720 resolution and above.
	</td>
      </tr>
     </table>
</table>
</body>
</html>
