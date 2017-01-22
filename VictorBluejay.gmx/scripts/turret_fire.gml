{ 
if (bullet_type == undefined) {
    bullet_type = turret_1_bullet
}

depth = -y;
coolDown = coolDown -1;
target = instance_nearest(x, y, normal_squirrel);

if(distance_to_object(target) < radius){
    if (coolDown <= 0){
        bullet = instance_create(x,y,bullet_type);
        bullet.tar = target;
        coolDown = fire_rate;    
        if (fire_sound_effect != undefined) {
            audio_play_sound(fire_sound_effect, 8, false);
        }
    }
}

}

