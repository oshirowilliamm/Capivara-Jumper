y_inicial = 312;
x_inicial = 88;
debug = 0;

gera_plataformas = function()
{
    //limitando as plataformas dentro da camera
    var _cam_y = camera_get_view_y(view_camera[0]);
    
    if (y_inicial >= _cam_y)
    {
        //criando plataforma
        instance_create_layer(x_inicial, y_inicial, layer, choose(obj_plat_tronco, obj_plat_movel, obj_plat_folha));
        
        //subindo as plataformas
        y_inicial -= random_range(80, 105);
        x_inicial = random_range(32, 128);
         
        //show_debug_message(debug);
        //debug++;
    }
}
