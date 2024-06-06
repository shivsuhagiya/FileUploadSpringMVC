<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyApp</title>
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
<h1>Spring Multiple File Upload Example Using AJAX</h1>
<h2> <a href="/myapp/index.html">Home</a></h2>
<form:form id="multiplefileForm" name="multiplefileForm" method="post" action=""  modelAttribute="uploadForm" enctype="multipart/form-data">
	<input id="fUpload" name="files"  multiple type="file"   style="width: 400px; height: 100px; border: 1px solid gray; border-radius: 2px; padding: 10px;"/> 
	<br />
    <ul id="ulList"></ul><input id="btnShow" type="button" value="Ajax Upload" /><br />
 	<!-- <br/><input type="submit" value="Upload" />  -->
</form:form>   
</body> 
</html>

 <script>
      $("#btnShow").on('click', function() {
        $("#ulList").empty();
        var fp = $("#fUpload");
        var lg = fp[0].files.length; // get length
        var items = fp[0].files;
        var fragment = "";

        if (lg > 0) {
          for (var i = 0; i < lg; i++) {
            var fileName = items[i].name; // get file name
            var fileSize = items[i].size; // get file size 
            var fileType = items[i].type; // get file type
            callAjaxUpload(items[i],i);
            // append li to UL tag to display File info
            fragment += "<li>" + fileName + " (<b>" + fileSize + "</b> bytes) - Type :" + fileType + "  <b id='filenale_"+i+"'></b></li>";
          }

          $("#ulList").append(fragment);
        }
      });

      function callAjaxUpload(filedata,i)
      {  
    	  var data =  ""; 
    	  data = new FormData();
    	  data.append("files", filedata);    	  
    	   $.ajax({
               type: "POST",
               enctype: 'multipart/form-data',
               url: "saveAjaxFileUpload.html",
               data: data,
               processData: false,
               contentType: false,
               cache: false,
               timeout: 600000,
               success: function (data) {
            	  if(data!="yes"){
                  	alert(data);
                  	$("#filenale_"+i).text("Fail");
            	  }else{
            		  $("#filenale_"+i).text("Success");
            	  }
               },
               error: function (e) {
                  // $("#result").text(e.responseText);
                   console.log("ERROR : ", e);
                   //$("#btnSubmit").prop("disabled", false);
					alert("Error, Please try again.");
               }
           });
      }
    </script>