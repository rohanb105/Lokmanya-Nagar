<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="xml.css" type="text/css" rel="stylesheet" />
<title>The Lokmanya Co-Operative Housing Society Ltd.</title>
<script>
function delayer(){
    window.location = "index.html";
}

	<%
		String index = request.getParameter("index");
	System.out.println("Index:- " + index);
	%>
	window.open("NewsServlet.do?index=" + <%=index%>, "_blank", "fullscreen=no, width=950,height=750,resizable=no,menubar=no,status=no");
</script>
</head>
<body  onLoad="setTimeout('delayer()', 500)">

</body>
</html>