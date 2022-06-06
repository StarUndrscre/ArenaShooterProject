instance_create_layer(random(room_width),random(room_height),"EnemyLayer",choose(obj_spawner,obj_spawner2));
spawnrate = (120 / obj_stats.plr_level);
if (obj_stats.plr_level <= 1) spawnrate += 30;

alarm[0] = spawnrate;