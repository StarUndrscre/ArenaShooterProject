if (hp > 0) {
	flash = 1;
}
if (hp <= 0 and cooldown == 0) {
	flash = 1;
	cooldown = 30;
	cooldown -= 1;
}