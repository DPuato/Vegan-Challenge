global.gyumolcs += 1;

audio_play_sound(snd_pickup, 0, 0);

instance_change(o_pickup, true);

var inst = instance_create_layer(x + 0, bbox_top, "Instances", o_alma_szovege);