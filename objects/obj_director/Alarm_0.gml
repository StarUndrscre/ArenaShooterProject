with (obj_ui) {
	if (plr_score == 0) {self.spawnrate = 120; plr_level = 1}
	if (plr_score == 250) {self.spawnrate = 90; plr_level = 2}
	if (plr_score == 500) {self.spawnrate = 60; plr_level = 3}
	if (plr_score == 750) {self.spawnrate = 30; plr_level = 4}
	if (plr_score = 1000) {spawnrate = infinity; plr_level = 5}
}

instance_create_layer(random(room_width),random(room_height),"EnemyLayer",obj_spawner);

alarm[0] = spawnrate;