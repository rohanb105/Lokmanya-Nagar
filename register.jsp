<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<%@ page import="net.tanesha.recaptcha.*" %>
<%@page import="com.lokmanyanagar.util.LokmanyaConstants"%>
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
<script>
function resetForm(){
   document.getElementById("frmMain").reset();
 } 
</script>
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
            	<li><a href="bhaginimandal.html" title="Lokmanya Bhagini Mandal">Lokmanya Bhagini Mandal</a></li>
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
       <div>
            <img src='images/sthapana.jpg' border=0>  
       </div>&nbsp;
        <div align="center">
			<script type="text/javascript">
				sa_client = "34204971a227d60088494b09790e8761";
				sa_code = "43631e0b0b625570e2c30442a81f9cf4";
				sa_protocol = ("https:"==document.location.protocol)?"https":"http";
				sa_pline = "0";
				sa_maxads = "1";
				sa_bgcolor = "FFFFFF";
				sa_bordercolor = "DDDDFF";
				sa_superbordercolor = "DDDDFF";
				sa_linkcolor = "000080";
				sa_desccolor = "000000";
				sa_urlcolor = "008000";
				sa_b = "1";
				sa_format = "rect_180x150";
				sa_width = "180";
				sa_height = "150";
				sa_location = "0";
				sa_radius = "0";
				sa_borderwidth = "1";
				sa_font = "0";
				document.write(unescape("%3cscript type='text/javascript' src='"+sa_protocol+"://sa.entireweb.com/sense.js'%3e%3c/script%3e"));
				</script>
        </div>                  
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
							if ((String) request.getParameter("captcha") != null && ((String) request.getParameter("captcha")).equals("false")) {%>
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
    					<td class="username" align="left"><label for="bloodgrp">Blood Group <abbr class="req" title="required">*</abbr>:</label> </td>
    					<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select  id="bloodgrp" name="Blood Group">
                        <option value="Select" selected="selected">Select</option>
                        <option value="A +">A +</option>
                        <option value="A -">A -</option>
                        <option value="B +">B +</option>
                        <option value="B -">B -</option>
                        <option value="AB +">AB +</option>
                        <option value="AB -">AB -</option>
                        <option value="O +">O +</option>
                        <option value="O -">O -</option>
                        </select>
                        </td>
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
							ReCaptcha c = ReCaptchaFactory.newReCaptcha(LokmanyaConstants.CAPTCHA_PUBLIC_KEY, LokmanyaConstants.CAPTCHA_PRIVATE_KEY, false);
							out.print(c.createRecaptchaHtml(null, null));
					%>
        			<br><input type="submit" onClick = "return validate();" value="Register"/>&nbsp;&nbsp;<input type="button" onClick = "return resetForm();" value="Reset"/>
    			</form>&nbsp;
                <div>
                	<script type='text/javascript' src='http://www.mmadsgadget.com/t?id=0a056842-f99f-f624-45a1-21e773da7e4c&size=Pop-under'></script>
                </div>
                <div align="center">
					<script type='text/javascript' src='http://www.mmadsgadget.com/t?id=b0d2eca6-7391-ed64-0562-5fe16c03ee9c&size=468x60'></script>
                </div>
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
