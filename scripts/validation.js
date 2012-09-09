function validate() {
	 var elem = document.getElementById('frmMain').elements;
     for(var i = 0; i < elem.length; i++)
     {
         /*alert("Name:- " + elem[i].name);
         alert("Value:- " + elem[i].value);*/
         
         
         if (elem[i].value == "") {
        	 if (elem[i].id == "middleName" || elem[i].id == "telNo") {
            	 continue;
             }
        	 alert(elem[i].name + " is mandatory..");
        	 elem[i].focus();
             return false;
         }

         if (elem[i].id == "mobNo" || elem[i].id == "telNo") {
        	if (isNaN(elem[i].value)) {
        		alert("Please enter Numeric Value for " + elem[i].name);
        		elem[i].select();
        		elem[i].focus();
        		return false;
        	}
         }
     }
     
     if (!validateEmail()) {
    	 return false;
     }
     if (!validatePassword()){
    	 return false;
     }

}

function validateEmail() {
	var email = document.getElementById("email");
	var confirmemail = document.getElementById("confirmemail");
	
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(email.value) == false) 
        {
            alert('Invalid Email Address');
            email.select();
            email.focus();
            return false;
        }

	if (email.value != confirmemail.value) {
		alert("Confirm Email incorrect");
		confirmemail.value = "";
		confirmemail.focus();
		return false;
	}
	return true;
}


/*function validateEmail() {
	var email = document.getElementById("email");
	var confirmemail = document.getElementById("confirmemail");
	
	if (email.value != confirmemail.value) {
		alert("Confirm Email incorrect");
		confirmemail.value = "";
		confirmemail.focus();
		return false;
	}
	return true;
}*/

function validatePassword() {
	var password = document.getElementById("password");
	var confirmPassword = document.getElementById("confirmPassword");
	
	if (password.value != confirmPassword.value) {
		alert("Confirm Password incorrect");
		confirmPassword.value = "";
		confirmPassword.focus();
		return false;
	}
	return true;
}