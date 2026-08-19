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
        var _plataformas = choose(obj_plat_tronco, obj_plat_movel, obj_plat_folha);
        var _plat = instance_create_layer(x_inicial, y_inicial, layer, _plataformas);
        
        //alterando direção da plataforma movel
        if (_plat.object_index == obj_plat_movel)
        {
            _plat.direction = choose(0, 180);
            show_debug_message(_plat.direction);
        }
        
        //subindo as plataformas
        y_inicial -= random_range(90, 105);
        x_inicial = random_range(32, 128);
         
        //show_debug_message(debug);
        //debug++;
    }
}