///bird_move_right_state

var wall_at_right = place_meeting(x+1, y, obj_solid);
var ledge_at_right = !position_meeting(bbox_left+1, bbox_bottom+1, obj_solid);

if(wall_at_right || ledge_at_right)
{
    state = bird_move_left_state;
}

//Rotate sprite
image_xscale = 1;

//Move the bird
x += 1;
