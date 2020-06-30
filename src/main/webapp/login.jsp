<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/login.css">
	<meta name="viewport" content = "width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="box">
		<h2>Login</h2>
		<form action="Login">
			<div class="inputBox">
				<input type="text" name="custid" required="required">
				<label>CustomerID</label>
			</div>
			<div class="inputBox">
				<input type="password" name="pwd" required="required" id="myInput">
				<span class = "eye" style = "color: black" onclick="myFunction()">
				<i id="hide1" class="fa fa-eye"></i>
				<i id="hide2" class="fa fa-eye-slash"></i>
				</span>
				<label>Password</label>
				<div class="text-right">
					<a href="javascript:void(0)" class="forgotPwd">Forgot Password ?</a>
				</div>
			</div>
			<input type="submit" value="Login">
		</form>
	</div>
	<script>
		function myFunction(){
			var x=document.getElementById("myInput");
			var y=document.getElementById("hide1");
			var z=document.getElementById("hide2");

			if (x.type === 'password') {
				x.type="text";
				y.style.display="block";
				z.style.display="none";
			}
			else
			{
				x.type="password";
				y.style.display="none";
				z.style.display="block";	
			}
		}
	</script>
</body>
</html>