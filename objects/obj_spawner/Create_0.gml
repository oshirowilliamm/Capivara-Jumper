alarm[0] = 1;

gerador = function()
{
    repeat (5) 
    {
    	var _x = random_range(0, room_width);
        var _y = random_range(0, room_height);
        instance_create_layer(_x, _y, layer, obj_plataforma);
    }
}