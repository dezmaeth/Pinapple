(function() {
    'use strict';
    Pineaple.Controllers.Map = function(gmap) {
	  var _map = gmap;
	  var _hasPosition = function() {
		    
	  }

	  this.addPoint = function(position,params) {
	  	var point = new _map.LatLng(position.coords.latitude, position.coords.longitude);
		params.mapTypeId: _map.MapTypeId.ROADMAP;
		var map = new _map.Map(mapDiv, params),
		var marker = new _map.Marker({
		   	position: point,
		   	map: map,
		   	title: params.title
		});

		
	  }
	}
})();