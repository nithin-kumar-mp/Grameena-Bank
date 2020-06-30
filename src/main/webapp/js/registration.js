/**
 * 
 */

function registrationForm(){
	var flag = true;
	
	var x = $('.userName').val();
	console.log(x);
	if(x=="")
	{
		$("#error1").show();
		flag = false;
	}
	else
		$("#error1").hide();
			
	x = $('.userAge').val();
	
	if(x=="")
	{
		$("#error2").show();
		flag = false;
	}
	else
		$("#error2").hide();
	
	x = document.getElementsByName('userGender');
	if(!(x[0].checked || x[1].checked || x[2].checked))
	{
		$("#error3").show();
		flag = false;
	}
	else
		$("#error3").hide();
	
	x = $('.userEmail').val();
	
	if(x=="")
	{
		$("#error4").show();
		flag = false;
	}
	else {
		var mailformat = /^([a-z 0-9\.-]+)@([a-z0-9-]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
		if(mailformat.test(x))
		{
			$("#error4").hide();
		}
		else
		{
			$("#error4").show();
			flag = false;
		}
	}
	
	x = $('.userNumber').val();
	
	if(x=="")
	{
		$("#error5").show();
		flag = false;
	}
	else
		$("#error5").hide();
	
	x = $('.userAddress').val();
	
	if(x=="")
	{
		$("#error6").show();
		flag = false;
	}
	else
		$("#error6").hide();
	
	x = $('.userCity').val();
	
	if(x=="")
	{
		$("#error7").show();
		flag = false;
	}
	else
		$("#error7").hide();
	
	x = $('.userState').val();
	
	if(x=="")
	{
		$("#error8").show();
		flag = false;
	}
	else
		$("#error8").hide();
	
	x = $('.userPincode').val();
	
	if(x=="")
	{
		$("#error9").show();
		flag = false;
	}
	else
		$("#error9").hide();
	
	x = $('.userAccType').val();
	
	if(x=="none")
	{
		$("#error10").show();
		flag = false;
	}
	else
		$("#error10").hide();
	
	x = $('.userBranch').val();
	
	if(x=="none")
	{
		$("#error11").show();
		flag = false;
	}
	else
		$("#error11").hide();
	
	x = $('.userDOB').val();
	
	if(x=="")
	{
		$("#error12").show();
		flag = false;
	}
	else
		$("#error12").hide();
	
	if(flag) {
		document.getElementById("registrationForm").submit();
	}
	else {
		$('.form-div input[type="text"], .form-div select').css('border-bottom', '2px solid red');
	}
	
}

function text(input)
{
	var regex = /[^a-z, ]/gi;
	input.value = input.value.replace(regex, "");
}

function number(input)
{
	var alpha = /[^0-9]/g;
	input.value = input.value.replace(alpha, "");
}

function general(input)
{
	$('#'+input).hide();
}