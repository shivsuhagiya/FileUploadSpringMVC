<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyApp</title>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" >
</head>
<body>
<h1>Spring File Upload Example</h1>
<h3> <a href="/myapp/index.html">Home</a></h3>
 <form method="POST" action="uploadSingleFile.html" enctype="multipart/form-data">
        File to Upload: <input type="file" name="file"></br> </br> 
        Name: <input type="text" name="name"><br /> </br> 
        <input type="submit" value="Upload">
 </form>
</body>
</html>