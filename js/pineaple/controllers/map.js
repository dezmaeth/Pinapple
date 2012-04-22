(function() {
    'use strict';
    Pinapple.Map.init = function(mapDiv,params) {
	  var _map; this.map; this.yourposition; this.mapDiv = mapDiv;
	  
	  var _createMap = function(mapDiv, params) { 
	  	_map = new google.maps.Map(mapDiv, params);
	  	Pinapple.Map.map = _map;
	  }

	  this.addPoint = function(params) {
	  	var marker = new google.maps.Marker({
		   	position: params.point,
		   	map: _map,
		   	title: params.title
		});
	  }

	  _createMap(mapDiv,params);
	}
})();