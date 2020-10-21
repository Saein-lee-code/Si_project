function toggleSwitch(){
	if(radio_std.checked){
		findPwForm1.style.display = "block";
		findPwForm2.style.display = "none";		
	}else if(radio_prof.checked){
		findPwForm1.style.display = "none";
		findPwForm2.style.display = "block";		
	}	
	findPwForm1.reset();
	findPwForm2.reset();
}