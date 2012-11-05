<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Lokmanya Co-Operative Housing Society Ltd.</title>
<script language=Javascript src="scripts/jquery.js" type=text/javascript></script>
<script language=Javascript src="scripts/validation.js" type=text/javascript></script>
<script language=Javascript src="scripts/jquery_funcs.js" type=text/javascript></script>
<link href="css/stylesheet.css" type=text/css rel=stylesheet/>
<link href="xml.css" type=text/css rel=stylesheet/>
</head>
<body>
	<table align ="center">
        <tr>
        	<td border="0" cellspacing="0" cellpadding="0" bgcolor="#6E0000">	
    			<img src="images/banner.png" width="1077"/>
    		</td>
  		</tr>
	</table>
	<table width="100%" align="center" border="0">
		<tr>
			<td border="0" align ="center">
                <img src="images/flash-image.jpg" />
            </td>
		</tr>
	</table>
	<table width="100%" align="center" border="0">
		<tr>
			<td align="center" valign="top" width="10%"  cellspacing="3" cellpadding="0">
				<div>
                    <img src='images/sthapana.jpg' border=0>  
                </div>
                <div>   
                   <script type="text/javascript"><!--
                        google_ad_client = "ca-pub-6815044779788538";
                        /* OtherPages */
                        google_ad_slot = "0989958156";
                        google_ad_width = 200;
                        google_ad_height = 200;
                        //-->
                    </script>
                    <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                    </script>          
                </div>
			</td>
			<td width="90%" valign="top">
				<% 
					String index = (String) request.getParameter("index");
					String title = (String) request.getAttribute("title");;
					String content = (String) request.getAttribute("content");
                %>
                <p><font face="Arial, Geneva, sans-serif" size="5"><b>Title :</b></font> <b><font face="Arial, Geneva, sans-serif" size="5"><%= title %></font></b></p><br>
                <% 
                if (content != null) {%>
                    <p><font face="Arial, Geneva, sans-serif" size="4"><b>Content :</b></font> <font face="Arial, Geneva, sans-serif" size="3"><%= content %></font></p>
                <% }
                %>
			</td>
		</tr>
	</table>
	&nbsp;&nbsp;
	<table width="100%" align="center" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td align="center" class="copyright"><font face="Arial, Geneva, sans-serif" size="-3">©Copyright 2012 The Lokmanya Co-Operative Housing Society Ltd., All rights reserved.<br>Site optimised for Internet Explorer 7+ at 1280x720 resolution and above.</font>
			</td>
		</tr>
	</table>
</body>
</html>
