<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%
	String path=request.getContextPath();
%>

<script type="text/javascript" src="jslib/jquery-1.9.1.min.js"></script>

<script type="text/javascript">

	function sub(){
		$.ajax({
			url:"<%=path %>/logout.do",
			type:"post",
			sucess:function(data){
				alert("---------");
			},
			error:function(){
				alert(">>>>>>>>>");
			}
		})
	}

</script>


</head>
<body>
	<h1>app---<sec:authentication property="name"/> </h1>
	<form action="<%=path %>/logout.do"><input type="button" onclick="sub()" value="logout"/></form>
</body>
</html>