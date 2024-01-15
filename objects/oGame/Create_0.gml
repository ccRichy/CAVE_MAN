/*Inputs*/						#region
		/*Movement*/		#region
		
global.moveUp = keyboard_check(ord("W"));
global.moveDown = keyboard_check(ord("S"));
global.moveLeft = keyboard_check(ord("A"));
global.moveRight = keyboard_check(ord("D"))

global.sprintHold = keyboard_check(vk_shift);
global.sprintRelease = keyboard_check_released(vk_shift)
global.sprintToggle= keyboard_check(vk_shift);

global.jumpKey = keyboard_check_pressed(vk_space)
global.jumpHold = keyboard_check(vk_space);

	#endregion
		/*Shoot*/				#region
		
global.shootSemi = keyboard_check_pressed(vk_shift);
global.shootAuto = keyboard_check(vk_shift);

#endregion
		/*Aim*/					#region

global.aimUp  = keyboard_check(vk_up);
global.aimDown = keyboard_check(vk_down);
global.aimLeft = keyboard_check(vk_left);
global.aimRight = keyboard_check(vk_right);

global.aimUpRelease = keyboard_check_released(vk_up);
global.aimDownRelease = keyboard_check_released(vk_down);
global.aimLeftRelease = keyboard_check_released(vk_left);
global.aimRightRelease = keyboard_check_released(vk_right);

	#endregion
		/*Action*/				#region

global.leftClick = mouse_check_button_pressed(mb_left);
global.leftClickHold = mouse_check_button(mb_left);
global.leftClickRelease = mouse_check_button_released(mb_left);
global.rightClick = mouse_check_button_pressed(mb_right);
global.rightClickHold = mouse_check_button(mb_right);
global.rightClickRelease = mouse_check_button_released(mb_right);

global.useKey = keyboard_check_pressed(ord("E"));
global.inv1 = keyboard_check_pressed(ord("1"));
global.inv2 = keyboard_check_pressed(ord("2"));
global.inv3 = keyboard_check_pressed(ord("3"));

	#endregion

	#endregion

window_set_cursor(-1);

//Instantiate
global.collMap = layer_tilemap_get_id(layer_get_id("TileCollisions"));

//Counters
global.ropeAmmo = 0;
global.wireAmmo = 0;

global.ropeAmmoCurrent = 0
global.wireAmmoCurrent = 0;

tutorialText = 0;
tutString = "Cool";
global.gameStarted = 0;
global.roomSave = 0;

xx = 0;
yy = 0;


//surface_resize(application_surface,320,180);