y_inicial = 280;
debug = 0;

gerador = function()
{
    //limitando as plataformas dentro da camera
    var _cam_y = camera_get_view_y(view_camera[0]);
    
    if (y_inicial >= _cam_y)
    {
        var _x = random_range(32, 128);
        
        //criando plataforma
        instance_create_layer(_x, y_inicial, layer, obj_plataforma);
        
        //subindo as plataformas
        y_inicial -= random_range(80, 100);
        
        //show_debug_message(debug);
        //debug++;
    }
}