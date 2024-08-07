//function CountryChanged(ddlCountry) {

//	var state = document.getElementById("ddlState");
//	if (state == null) return;

//	switch (ddlCountry.selectedIndex) {
//		case 1:

//			break;
//	}
//}

//function StateChanged(ddlState) {


//}

function DisplayButtonClick() {
	ShowGoogleMap();
}

function ShowGoogleMap() {
	var country = GetDropDownListText("MainContent_ddlCountry");
	var state = GetDropDownListText("MainContent_ddlState");
	SetGoogleLink(country, state);
	return true;
}

function GetCurrentCountry() {
	return GetDropDownListText("ddlCountry");
}

function GetDropDownListText(ddlName) {
	var ddl = document.getElementById(ddlName);
	if (ddl == null || ddl.selectedIndex == 0) return "";
	var text = ddl.options[ddl.selectedIndex].text;
	return text;
}

function SetGoogleLink(country, state) {
	//var uri = "https://maps.google.com/maps?q=" + GetCurrentCountry() + "%20ONTARIO%20VAUGHAN&t=&z=13&ie=UTF8&iwloc=&output=embed";
	//uri = "https://maps.google.com/maps?q=usa%20california%20los%20angeles&t=&z=13&ie=UTF8&iwloc=&output=embed";
	var uri = GetGoogleLink(country, state);
	var map = document.getElementById('gmap_canvas');
	map.src = uri;
}

function GetGoogleLink(country, state) {
	//var uri = "https://maps.google.com/maps?q=north%20america&t=&z=4&ie=UTF8&iwloc=&output=embed";
	var uri = "https://maps.google.com/maps?q={COUNTRY}{STATE}&t=&z=4&ie=UTF8&iwloc=&output=embed";

	if (country == "" || country === undefined) {
		uri = uri.replace("{COUNTRY}{STATE}", "north%20america");
	}
	else {
		uri = uri.replace("{COUNTRY}", country.replace(" ", "%20"));	
	}
	if (state == "" || state === undefined) {
		uri = uri.replace("{STATE}", "");
	}
	else {
		uri = uri.replace("{STATE}", "%20" + state.replace(" ", "%20"));
	}
	return uri;
	//if (country == "" || country === undefined) return "https://maps.google.com/maps?q=north%20america&t=&z=4&ie=UTF8&iwloc=&output=embed";
	//javascript:;
	//var googleLink = "https://maps.google.com/maps?q=";
	//if (country == "") return googleLink + "north%20america";

	//return "https://maps.google.com/maps?q=usa%20california%20los%20angeles&t=&z=13&ie=UTF8&iwloc=&output=embed";
}

window.onload = function () {
	//document.getElementById('someImage').src = getImagePath();
	//SetGoogleLink();
	ShowGoogleMap();
}