/// @desc

if (keyboard_check_pressed(vk_enter)){
	isFullscreen = !isFullscreen;
}

window_set_fullscreen(isFullscreen);