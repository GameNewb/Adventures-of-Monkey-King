///direction_move_bounce(collision_object)

var collision_object = argument0;

// Horizontal Collisions
if (place_meeting(x+hspd, y, collision_object)) {
    while (!place_meeting(x+sign(hspd), y, collision_object)) {
        x += sign(hspd);
    }
    hspd = -(hspd/2);
}
x += hspd;

// Vertical Collisions
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y += sign(vspd);
    }
    vspd = -(vspd/2);
    if(abs(vspd) < 0) vspd = 0; //Don't get stuck with tiny values
}
y += vspd;

