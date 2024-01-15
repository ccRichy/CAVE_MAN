/// @desc
/*Inputs*/						#region
		/*Movement*/		#region
		
global.moveUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
global.moveDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
global.moveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
global.moveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);

global.moveLeftPressed = keyboard_check_pressed(ord("A"));
global.moveRightPressed = keyboard_check_pressed(ord("D"));


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