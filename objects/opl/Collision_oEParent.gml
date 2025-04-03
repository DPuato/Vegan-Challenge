if !die && other.hurt=false && other.die=false
{
if ((yprevious <= other.y)) && vsp > 0
{
canHurt=false;
audio_play_sound(snd_hit_enemy, 0, 0);
vsp = -jumpspeed;
with(other)
{
instance_create_layer(x + 0, bbox_top, "FX", o_boom);
hurt=true;
myHp -= 1;
}
}
else if canHurt
{
if(state = 0)
{
audio_play_sound(snd_fatman_sebesul, 0, 0);
hp -= 1;
hsp = sign(x - other.x) * hsp_knockback;
vsp = -vsp_knockback;
state = 1;
canHurt=false;
}
}
} 
