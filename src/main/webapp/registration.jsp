<jsp:include page="init.jsp"/>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grameena Bank</title>
<link href="<%=request.getContextPath() %>/css/registration.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/registration.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
</head>
<body>
<div class="container-fluid">
	<div class="form-div">
		<form action="#" id="registrationForm">
			<img alt="Logo" src="<%=request.getContextPath()%>/images/bank2.png" class="regFormLogo">
			<h2>Fill the form below!</h2>
			<table>
				<tr>
					<td style="width: 30%">Name<span class="required">*</span></td>
					<td style="width: 70%">
						<input type="text" name="userName" class="userName" onkeyup="text(this)" onclick="general('error1')" placeholder="Enter your Full Name">
						<span class="error" id="error1">Enter a valid Name</span>
					</td>
				</tr>
				<tr>
					<td>Age<span class="required">*</span></td>
					<td>
						<input type="text" name="uerAge" class="userAge" maxlength="2" onkeyup="number(this)" onclick="general('error2')" placeholder="Enter your Age">
						<span class="error" id="error2">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>Gender<span class="required">*</span></td>
					<td>
						<div style="width:75%;display: inline-flex;justify-content: space-between;">
							<div>
								<input type="radio" name="userGender" class="userGender" value="Male" onclick="general('error3')"> Male
							</div>
							<div>
								<input type="radio" name="userGender" class="userGender" value="Female" onclick="general('error3')"> Female
							</div>
							<div>
								<input type="radio" name="userGender" class="userGender" value="Other" onclick="general('error3')"> Other
							</div>
						</div><br>
						<span class="error" id="error3">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>Date of Birth<span class="required">*</span></td>
					<td>
						<input type="text" name="userDOB" class="userDOB" data-provide="datepicker" data-date-end-date="0d" readonly="readonly" onclick="general('error12')" placeholder="DD/MM/YYYY">
						<span class="error" id="error12">This field is mandatory</span>
					</td>
				</tr>
				<tr>
					<td>E-Mail<span class="required">*</span></td>
					<td>
						<input type="text" name="userEmail" class="userEmail" onclick="general('error4')" placeholder="abc@xyz.com">
						<span class="error" id="error4">Enter a valid E-Mail Address</span>
					</td>
				</tr>
				<tr>
					<td>Phone number<span class="required">*</span></td>
					<td>
						<input type="text" name="userNumber" class="userNumber" maxlength="10" onkeyup="number(this)" onclick="general('error5')" placeholder="Enter your Phone Number">
						<span class="error" id="error5">Enter a valid Phone Number</span>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Address<span class="required">*</span></td>
					<td>
						<textarea rows="3" cols="8" name="userAddress" class="userAddress" placeholder="Enter your Address here..." onclick="general('error6')"></textarea>
						<span class="error" id="error6">Address cannot be empty</span>
					</td>
				</tr>
				<tr>
					<td>City<span class="required">*</span></td>
					<td>
						<input type="text" name="userCity" class="userCity" onclick="general('error7')" placeholder="Enter City">
						<span class="error" id="error7">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>State<span class="required">*</span></td>
					<td>
						<input type="text" name="userState" class="userState" onclick="general('error8')" placeholder="Enter State">	
						<span class="error" id="error8">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>Pincode<span class="required">*</span></td>
					<td>
						<input type="text" name="userPincode" class="userPincode" maxlength="6" onkeyup="number(this)" onclick="general('error9')" placeholder="Enter your Pincode">	
						<span class="error" id="error9">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>Account Type<span class="required">*</span></td>
					<td>
						<select name="userAccType" class="userAccType" onclick="general('error10')">
							<option style="display: none;" selected value="none">Select Account Type</option>
							<option value="Savings">Savings Account</option>
							<option value="Current">Current Account</option>
							<option value="Recurring">Recurring Deposit Account</option>
							<option value="Fixed">Fixed Deposit Account</option>
						</select>
						<span class="error" id="error10">This field is required</span>
					</td>
				</tr>
				<tr>
					<td>Branch<span class="required">*</span></td>
					<td>
						<select name="userBranch" class="userBranch" onclick="general('error11')">
							<option style="display: none;" selected value="none">Select Branch</option>
							<option value="J.P.Nagar, Mysuru">J.P.Nagar, Mysuru</option>
							<option value="Vijayanagar, Mysuru">Vijayanagar, Mysuru</option>
							<option value="K.R.Circle, Mysuru">K.R.Circle, Mysuru</option>
							<option value="Kuvempunagar, Mysuru">Kuvempunagar, Mysuru</option>
						</select>
						<span class="error" id="error11">This field is required</span>
					</td>
				</tr>
			</table>
			<div class="text-center">
				<button type="button" class="btn btn-secondary register-btn" onclick="registrationForm()">Register</button>
				<button type="reset" class="btn btn-danger register-btn">Cancel</button>
			</div>
		</form>
	</div>
</div>
</body>
<script>
$(document).ready(function(){
	$('.userDOB').datepicker({
		format: 'dd/mm/yyyy',
        clearBtn: true,
        todayHighlight: true,
        autoclose: true,
	});
	  $( function() {
		    var availableCities = [
		      "Mysuru",
		      "Bangalore",
		      "Chamarajanagar",
		      "Bidar",
		      "Chitradurga",
		      "Mangalore",
		      "Ballari",
		      "Raichur",
		      "Udupi",
		      "Kodagu",
		      "Hassan",
		      "Chikkamagaluru",
		      "Kolar",
		      "Tumkuru",
		    ];
		    $( ".userCity" ).autocomplete({
		      source: availableCities
		    });
	  });
	  $( function() {
		  var availableStates = [
			  "Karnataka",
			  "Tamil Nadu",
			  "Kerala",
			  "Andhra Pradesh",
			  "Telanagana",
			  "Maharashtra",
			  "Rajasthan",
			  "Delhi",
			  "Madhya Pradesh",
			  "Gujarath",
			  "Orissa",
			  "Uttar Pradesh",
			  "Assam",
			  ];
		  $( ".userState" ).autocomplete({
			  source: availableStates
		  });
	  });
	  
	  $(document).on('focus', '.form-div input[type="text"], .form-div select', function(){
		  $('.form-div input[type="text"], .form-div select').css('border-bottom', '2px solid gray');
	  });
});
</script>
</html>