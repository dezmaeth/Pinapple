(function() { 
	'use strict';
	Pinapple.Draw.init = function(listDiv) {
		var _listDiv = listDiv; var _data = Pinapple.Data; 
		var _mapWrapper = $(Pinapple.Map.mapDiv); var _mapToggleBtn = $(document.getElementById('mapToggle'));
		

		this.list = function() {
			assert(_data.list instanceof Array, "Invalid Datatype on Server Response");
			var listBody = $("#list tbody");
			var reply = [
				'<tr>',
					'<th class="commodity">',''/* 2 */,'</th>',
					'<td class="variety">',''/* 5 */,'</td>',
					'<td class="templow">',''/* 8 */,'</td>',
					'<td class="temphigh">','' /* 11 */,'</td>',
					'<td class="lat1">',''/* 14*/,'</td>',
					'<td class="lat2">',''/* 17 */,'</td>',
					'<td class="elv_low">',''/* 20 */,'</td>',
					'<td class="elv_high">',''/* 23 */,'</td>',
					'<td class="soiltype">',''/* 26 */,'</td>',
					'<td class="soilph">',''/* 29 */,'</td>',
					'<td class="soilph">',''/* 32 */,'</td>',
					'<td class="sunlight">',''/* 35*/,'</td>',
					'<td class="water">',''/* 38 */,'</td>',
					'<td class="water">',''/* 41 */,'</td>',
				'</tr>'
			];
			listBody.children().remove();
			for (var i=0;i<_data.list.length;i++) {
				reply[2] = _data.list[i].COMMODITY_CUL;
				reply[5] = _data.list[i].VARIETY_CUL;
				reply[8] = _data.list[i].TLOW_CUL;
				reply[11] = _data.list[i].THIGH_CUL;
				reply[14] = _data.list[i].LAT_1_DIS;
				reply[17] = _data.list[i].LAT_2_DIS;
				reply[20] = _data.list[i].ELEVATION_LOW_CUL;
				reply[23] = _data.list[i].ELEVATION_HIGH_CUL;
				reply[26] = _data.list[i].SOIL_TYPE_CUL;
				reply[29] = _data.list[i].SOIL_PH_MIN_CUL;
				reply[32] = _data.list[i].SOIL_PH_MAX_CUL;
				reply[35] = _data.list[i].SUNLIGHT_CUL;
				reply[38] = _data.list[i].PRECIPITATION_MIN_CUL;
				reply[41] = _data.list[i].PRECIPITATION_MAX_CUL;
				listBody.append(reply.join("\n"));
			}

			$("#results").slideDown('slow');
		}

		this.yourdata = function() {
			var _pos = Pinapple.Map.yourposition;
			$("#terrain-data #long").text(_pos.longitude);
			$("#terrain-data #lat").text(_pos.latitude);
			$("#terrain-data #elv").text(_pos.elevation + " meters above sea level");

		}

	}
})()