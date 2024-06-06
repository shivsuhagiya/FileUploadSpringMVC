<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<title>MyApp</title>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" >
<script 
src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
$(document).ready(function() {
	//add more file components if Add is clicked
	$('#addFile').click(function() {
		var fileIndex = $('#fileTable tr').children().length;
		$('#fileTable').append(
				'<tr><td>'+
				'	<input type="file" name="files['+ fileIndex +']" />'+
				'</td></tr>');
	});
	
});
</script>
</head>
<body>
<h1>Spring Multiple File Upload example</h1>
<h2> <a href="/myapp/index.html">Home</a></h2>
<form:form method="post" action="uploadMultipleFiles.html"  modelAttribute="uploadForm" enctype="multipart/form-data">

	<p>Select files to upload. Press Add button to add more file inputs.</p>

	<input id="addFile" type="button" value="Add File" />
	<table id="fileTable">
		<tr>
			<td><input name="files[0]" type="file" /></td>
		</tr>
		<tr>
			<td><input name="files[1]" type="file" /></td>
		</tr>
	</table>
	<br/><input type="submit" value="Upload" />
</form:form>
</body>
</html>