/* Author: Francisco Javier Henseleit Palma
*/
'use strict';

var mapa = document.getElementById('map');
var list = document.getElementById('list');



var init = function(position) {
	
	// init map with current position
	var showCropsBtn = $("#show-me-my-crops-button");
	var point = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
	Pinapple.Map.init(mapa, { zoom: 15, center: point, mapTypeId : google.maps.MapTypeId.TERRAIN});
	Pinapple.Map.addPoint({point: point, title: "Here you are" });
	Pinapple.Map.yourposition = position.coords;
	Pinapple.Map.yourpoint = point;
 	var elSvc = new google.maps.ElevationService();
	var positionalRequest = {'locations': [point] };
	if (elSvc) {
	elSvc.getElevationForLocations(positionalRequest, function(results, status) {
		if (status == google.maps.ElevationStatus.OK) {
        	if (results[0]) {
        		Pinapple.Map.yourposition.elevation = parseInt(results[0].elevation);
        		// init Draw Elements 
				Pinapple.Draw.init(list);
				Pinapple.Draw.yourdata();
				showCropsBtn.removeClass('disabled');
				showCropsBtn.click(showCrops);
        	 } else alert("No results found"); 
         } else alert("Elevation service failed due to: " + status);
	  });
	}
}

function showCrops() {
	var ph = $("#input_PH").val();
	var water = $("#input_Water").val();
	if (ph == " ") ph == 'null';
	if (water == " ") water == 'null';
	Pinapple.Map.yourposition.ph = eval(ph);
	Pinapple.Map.yourposition.water = eval(water);
	// server backend com
	Pinapple.Network.init();
	Pinapple.Network.getList(Pinapple.Draw.list);
}



if(navigator.geolocation) {
	navigator.geolocation.getCurrentPosition(init);
}
