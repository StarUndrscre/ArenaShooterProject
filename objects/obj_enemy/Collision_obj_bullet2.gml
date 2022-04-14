if (hp > 0) {
	audio_play_sound(snd_hit,0,0);
	flash = 1;
}
if (hp <= 0 and cooldown == 0) {
	audio_play_sound(snd_death,0,0);
	flash = 1;
	cooldown = 30;
	cooldown -= 1;
}