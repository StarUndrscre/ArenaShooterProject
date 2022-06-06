instance_create_layer(random(room_width),random(room_height),"EnemyLayer",choose(obj_spawner,obj_spawner2));
spawnrate = (spawnrate / obj_stats.plr_level) + 30;

alarm[0] = spawnrate;