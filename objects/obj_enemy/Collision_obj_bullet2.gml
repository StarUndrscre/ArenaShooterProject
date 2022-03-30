flash = 0.75;
if (hp > 0) audio_play_sound(snd_hit,0,0);
if (hp <= 0) audio_play_sound(snd_death,0,0);