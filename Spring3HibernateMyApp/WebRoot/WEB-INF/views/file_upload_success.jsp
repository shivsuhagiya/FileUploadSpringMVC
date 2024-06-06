<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>MyApp</title>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<h1>Spring Multiple File Upload example</h1>
	 <h2> <a href="/myapp/index.html">Home</a></h2>
	<p>Following files are uploaded successfully.</p>
	<ol>
		<c:forEach items="${files}" var="file">
			<li>${file}</li>
		</c:forEach>
	</ol>
</body>
</html>