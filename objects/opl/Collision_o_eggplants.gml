global.gyumolcs += 3;

audio_play_sound(snd_pickup, 0, 0);

instance_create_depth(other.x,other.y,0,o_pickup);

instance_create_layer(x,other.bbox_top, "FX", o_eggplants_szovege);

instance_destroy(other);
