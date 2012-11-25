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
       </div> 
        <div align="center">
			<script type="text/javascript">
			//interstitial ad
			clicksor_enable_inter = true; clicksor_maxad = -1;	 
			clicksor_hourcap = -1; clicksor_showcap = 10;
            //default banner house ad url 
            clicksor_default_url = '';
            clicksor_banner_border = ''; clicksor_banner_ad_bg = '';
            clicksor_banner_link_color = ''; clicksor_banner_text_color = '';
            clicksor_banner_text_banner = false; clicksor_banner_image_banner = true;
            clicksor_layer_border_color = '';
            clicksor_layer_ad_bg = ''; clicksor_layer_ad_link_color = '';
            clicksor_layer_ad_text_color = ''; clicksor_text_link_bg = '';
            clicksor_text_link_color = ''; clicksor_enable_text_link = false;
            clicksor_layer_banner = false;
            </script>
            <script type="text/javascript" src="http://ads.clicksor.com/newServing/showAd.php?nid=1&amp;pid=287381&amp;adtype=6&amp;sid=469279"></script>
            <noscript><a href="http://www.yesadvertising.com">affiliate marketing</a></noscript>
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
                <div align="center">
					<script type="text/javascript">
					//interstitial ad
					clicksor_enable_inter = true; clicksor_maxad = -1;	 
					clicksor_hourcap = -1; clicksor_showcap = 10;
                    //default banner house ad url 
                    clicksor_default_url = '';
                    clicksor_banner_border = ''; clicksor_banner_ad_bg = '';
                    clicksor_banner_link_color = ''; clicksor_banner_text_color = '';
                    clicksor_banner_text_banner = false; clicksor_banner_image_banner = true;
                    clicksor_layer_border_color = '';
                    clicksor_layer_ad_bg = ''; clicksor_layer_ad_link_color = '';
                    clicksor_layer_ad_text_color = ''; clicksor_text_link_bg = '';
                    clicksor_text_link_color = ''; clicksor_enable_text_link = false;
                    clicksor_layer_banner = false;
                    </script>
                    <script type="text/javascript" src="http://ads.clicksor.com/newServing/showAd.php?nid=1&amp;pid=287381&amp;adtype=2&amp;sid=469279"></script>
                    <noscript><a href="http://www.yesadvertising.com">affiliate marketing</a></noscript>
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
