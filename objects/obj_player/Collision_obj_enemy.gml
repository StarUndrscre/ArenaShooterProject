obj_deathscrn.fade = 1;
scrn_cooldown = 45;

if (scrn_cooldown >= 45) scrn_cooldown -= 1;
if (scrn_cooldown < 0) {
	instance_create_layer(0,0,"UILayer",obj_fade);
	obj_fade.fade = 1;
}