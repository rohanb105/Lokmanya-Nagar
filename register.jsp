<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<%@ page import="net.tanesha.recaptcha.*" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Lokmanya Co-Operative Housing Society Ltd.</title>
<SCRIPT language=JavaScript src="scripts/jquery.js" type=text/javascript></SCRIPT>
<SCRIPT language=JavaScript src="scripts/validation.js" type=text/javascript></SCRIPT>
<SCRIPT language=JavaScript src="scripts/jquery_funcs.js" type=text/javascript></SCRIPT>
<LINK href="css/stylesheet.css" type=text/css rel=stylesheet>
<LINK href="css/menu_style.css" type=text/css rel=stylesheet>
<!--<LINK href="newsStyleSheet.css" type=text/css rel=stylesheet>-->
</head>
<body>
	<table align ="center">
        <tr>
        	<td border="0" cellspacing="0" cellpadding="0" bgcolor="#6E0000">	
    			<img src="images/banner.png" width="1077"/>
    		</td>
  		</tr>
	</table>
<table width="1080" border="0" cellspacing="0" cellpadding="0" align="center">
    	<td class="menunav">
      	<tr>
        	<td align="center" valign="top">
			<ul id ="menunav">
        		<li><a href="index.html" title="HOME">HOME</a></li>
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
</table>
<tr>
</tr>
<table width="1080" align ="center" border="0">
  <tr>
    <td border="0" align ="center">
        <img src="images/flash-image.jpg" />
    </td>
  </tr>
</table>
<table width="1080" align ="center" border="0" cellspacing="2" cellpadding="0">
    <td align="center" valign="top" width="10%" >
       <img src='images/Sthapana.jpg' border=0>               
    </td>
	<td width = "80%" valign="top">
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
							<h2>Registration Successful!</h2>
						<% } else {
							if ((String) request.getParameter("captcha") != null) {%>
								<h2>Invalid Captcha..Please enter correct captcha values!</h2>
							<% } else {%>
								<h2>There is some problem with registration.Please try again!</h2>
						<% }
						}
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
    			</table>
    				<%
         				ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LfYndYSAAAAAOXdVq2RzqT06gXOlEsqfK_gnsNV", "6LfYndYSAAAAAON5osggHtDW5mwVOH0YCSrrwOgF", false);
          				out.print(c.createRecaptchaHtml(null, null));
        			%>
        			<br><input type="submit" onClick = "return validate();" value="Register"/>&nbsp;&nbsp;<a href="home.html" title="home"><b>Home</b></a>
    			</form>
    			</td>
    </table>
    </td>
   <table width="1080" align ="center" border="0" cellspacing="0" cellpadding="0">
      <tr>&nbsp;
      <td align="center" class="copyright">&copy;Copyright 2012 The Lokmanya Co-Operative Housing Society Ltd., All rights reserved.<br>Site optimised for Internet Explorer 7+ at 1280x720 resolution and above.
	</td>
      </tr>
     </table>
</table>
</body>
</html>
