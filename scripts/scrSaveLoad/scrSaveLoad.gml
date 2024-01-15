///@desc
global.gameData = {
	roomData: {}
}



function Save_Game(filename){

	Save_Room();
	
	var saveString = json_stringify(global.gameData);
	var saveFile = file_text_open_write(filename);
	file_text_write_string(saveFile, saveString);
	file_text_close(saveFile);
	
}
	
function Save_Room(){
	global.ropeAmmoCurrent = global.ropeAmmo;
	global.wireAmmoCurrent = global.wireAmmo;
	
	var saveData = [];

	with (oPlayer){
		var playerData = {
			obj : object_get_name(object_index),
			x : x,
			y : y,
			moveX : moveX,
			moveY : moveY,
			image_index : image_index,
			image_xscale : image_xscale,
			state : state
		};
		array_push(saveData, playerData);
	}

	with (oRope){
		var ropeData = {
			obj : object_get_name(object_index),
			extendActive : extendActive,
			x : x,
			y : y,
			image_yscale : image_yscale
		};
		array_push(saveData, ropeData);
	}
	with (oRopePickup){
		var ropePickData = {
			obj : object_get_name(object_index),
			x : x,
			y : y
		};
		array_push(saveData, ropePickData);
	}
	
	with (oWire){
		var wireData = {
			obj : object_get_name(object_index),
			x : x,
			y : y,
			image_xscale : image_xscale
		};
		array_push(saveData, wireData);
	}
	with (oWirePickup){
		var wirePickData = {
			obj : object_get_name(object_index),
			x : x,
			y : y
		};
		array_push(saveData, wirePickData);
	}

	struct_set(global.gameData.roomData, room_get_name(room), saveData);
	
}


function Load_Game(filename){
if (!file_exists(filename)) return;

	var loadFile = file_text_open_read(filename);
	var loadString = file_text_read_string(loadFile);
	global.gameData = json_parse(loadString);
	
	Load_Room();

	file_text_close(loadFile);

}
	
function Load_Room(){
	global.ropeAmmo = global.ropeAmmoCurrent;
	global.wireAmmo = global.wireAmmoCurrent;
	
	var loadArray = struct_get(global.gameData.roomData, room_get_name(room));
	
	if (is_undefined(loadArray)) return;
	instance_destroy(oPlayer);
	instance_destroy(oRope);
	instance_destroy(oRopeThrow);
	instance_destroy(oRopePickup);
	instance_destroy(oWire);
	instance_destroy(oWireThrow);
	instance_destroy(oWirePickup);
	
	for (var i = 0; i < array_length(loadArray); i++){
		var loadStruct = loadArray[i];
		instance_create_layer(loadStruct.x, loadStruct.y, "Instances", asset_get_index(loadStruct.obj), loadStruct);
	}
	with (oPlayer){
		if (place_meeting(x,y,oRope)){
			state = StateRope;
		}
	}
}