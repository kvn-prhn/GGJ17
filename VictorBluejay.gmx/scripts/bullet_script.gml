{
//spawnTower = instance_nearest(x,y,turret_1);
//tar = instance_nearest(x, y, normal_squirrel); // target for the bullet
//move_towards_point(spawnTower.target.x, spawnTower.target.y,15);

if (find_target == false) {
    


if (instance_exists(tar) && tar != noone) { //if (tar != undefined && tar != noone) {

find_target = true;

move_towards_point(tar.x, tar.y,15);

//squirrel_bonus_x = 0; //100;
//squirrel_bonus_y = 0; //100;

look_a_amount = 30;
turret_bullet_speed_hi = 60;

/*
squirrel_bonus_x = turret_bullet_speed_hi * cos(spawnTower.target.direction); //100;
squirrel_bonus_y = -turret_bullet_speed_hi * sin(spawnTower.target.direction); //100;

target_point_x = spawnTower.target.x + squirrel_bonus_x;
target_point_y = spawnTower.target.y + squirrel_bonus_y;
*/

squirrel_bonus_x = turret_bullet_speed_hi * cos(tar.direction); //100;
squirrel_bonus_y = -turret_bullet_speed_hi * sin(tar.direction); //100;

target_point_x = tar.x + squirrel_bonus_x;
target_point_y = tar.y + squirrel_bonus_y;

squirrel_bonus_y += ((target_point_y - y) / 30);
squirrel_bonus_x += ((target_point_x - x) / 30);

image_angle = point_direction(x, y, target_point_x, target_point_y);
//image_angle = point_direction(x, y, spawnTower.target.x + squirrel_bonus_x, spawnTower.target.y + squirrel_bonus_y);
// calculate direction vector towards target
turret_diffX = (target_point_x) - x;
turret_diffY = (target_point_y) - y;
// normalize direction vector
turret_magn = sqrt((turret_diffX * turret_diffX) + (turret_diffY * turret_diffY));
turret_diffX = turret_diffX / turret_magn;
turret_diffY = turret_diffY / turret_magn;
// set speed
hspeed = turret_diffX * turret_bullet_speed_hi;
vspeed = turret_diffY * turret_bullet_speed_hi;


} // end if

} // end debounce

}
