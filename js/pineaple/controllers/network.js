(function () { 
	'use strict';
	Pinapple.Network.init = function(settings) {
		var _url = Pinapple.Settings.Network.path;
		var _data = Pinapple.Data;
	    
	    //getters
	    this.getList = function(callback)  {
	    	var pos = Pinapple.Map.yourposition;
	    	var elv = Pinapple.Map.yourposition.elevation;
	    	var ph = (Pinapple.Map.yourposition.ph !== undefined)? Pinapple.Map.yourposition.ph : null;
	    	var water = (Pinapple.Map.yourposition.water !== undefined)? Pinapple.Map.yourposition.water : null ;
	    	var position = { long: pos.longitude , lat: pos.latitude };
	    	$.ajax({
	    		url: _url,
	    		type: 'POST',
	    		data : {'r':'getList', 'pos': position, 'elv' : elv, 'ph' : ph, 'water' : water },
	    		dataType:'json',
	    		success: function(data) { 
	    			_data.list = data; 
	    			callback();
	    		},
	    		error: function(err){ alert('error, you should not see this'); }
	    	});
	   }

	   this.getData = function(comodity) {
			$.ajax({
	    		url: _url,
	    		type: 'POST',
	    		data : {'r':'getData', 'comodity': comodity },
	    		async: true,
	    		success: function(data) { 
	    			console.log(data);
	    		}
	    	});
	   }
	}
})()