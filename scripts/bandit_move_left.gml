///bird_move_left_state

var wall_at_left = place_meeting(x-1, y, obj_solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, obj_solid);

if(wall_at_left || ledge_at_left)
{
    state = bandit_move_right;
}

//Rotate sprite
image_xscale = -1;

//Move the bandit
x -= 1;
