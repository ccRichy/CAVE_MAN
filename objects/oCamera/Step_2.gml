///@desc Set Position
if (!instance_exists(follow)) return;

var _x = clamp(follow.x+aimX - VIEW_W / 2, 0, room_width - BASE_W);
var _y = clamp(follow.y-6+aimY - VIEW_H / 2, 0, room_height - BASE_H);

var curX = VIEW_X;
var curY = VIEW_Y;

camera_set_view_pos(VIEW,
		lerp(curX, _x, camSpeed),
		lerp(curY, _y, camSpeed));

x = curX;
y = curY;