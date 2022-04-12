draw_self();
draw_sprite_ext(spr_enemy_flash,0,x,y,image_xscale,image_yscale,image_angle,c_white,flash);
//if (flash > 0)
//{
//	flash -= 0.05;
//	shader_set(shd_flash);
//	shd_alpha = shader_get_uniform(shd_flash, "alpha");
//	shader_set_uniform_f(shd_alpha, flash);
//	draw_self();
//	shader_reset();
//}