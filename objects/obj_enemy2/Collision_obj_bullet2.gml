if (hp > 0) {
	flash = 1;
}
if (hp <= 0 and cooldown == 0) {
	flash = 1;
	cooldown = 30;
	cooldown -= 1;
}

if (can_shoot == 1) {
	audio_play_sound(snd_enm_shoot,0,0);
	instance_create_layer(x,y,"BulletsLayer",obj_bullet_enm);
	start_moving = 1;
	can_shoot = 0;
	timer = 0;
}