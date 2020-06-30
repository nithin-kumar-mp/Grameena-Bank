<jsp:include page="init.jsp"/>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grameena Bank</title>
<link href="<%=request.getContextPath() %>/css/index.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<nav class="navbar navbar-expand-sm navbar-light bg-light">
	  	<a class="navbar-brand" href="#">
		    <img src="<%=request.getContextPath()%>/images/bank3.png" width="30" height="30" class="d-inline-block align-top" alt="">
		    Grameena Bank
 		</a>
		     <ul class="navbar-nav">
			      <li class="nav-item active">
			        <a class="nav-link" href="#">Home</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Features</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Pricing</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Disabled</a>
			      </li>
		     </ul>
	</nav>
</div>
</body>
</html>
<script>
$(document).ready(function(){
    $(window).scroll(function() { // check if scroll event happened
      if ($(document).scrollTop() > 50) { // check if user scrolled more than 50 from top of the browser window
        $(".navbar").css("background-color", "#f8f8f8 !important"); // if yes, then change the color of class "navbar-fixed-top" to white (#f8f8f8)
      } else {
        $(".navbar").css("background-color", "transparent !important"); // if not, change it back to transparent
      }
    });
  });
</script>