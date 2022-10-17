action_set_relative(0);
action_kill_object();
var __b__;
__b__ = action_if_dice(3);
if __b__
{
action_create_object(obj_health_pickup, 0, 0);
}
{
action_set_relative(1);
action_create_object(obj_alien_dead, 0, 0);
action_set_relative(0);
}
action_set_relative(0);
