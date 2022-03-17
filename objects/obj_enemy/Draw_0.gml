draw_self();

if (flash > 0)
{
	flash -= 0.05;
	shader_set(shd_flash);
	shd_alpha = shader_get_uniform(shd_flash, "alpha");
	shader_set_uniform_f(shd_alpha, flash);
	draw_self();
	shader_reset();
}