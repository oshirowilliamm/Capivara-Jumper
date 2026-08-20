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
        var _plataformas = choose(obj_plat_tronco, obj_plat_movel, obj_plat_folha, obj_plat_grama);
        var _plat = instance_create_layer(x_inicial, y_inicial, layer, _plataformas);
        
        //alterando direção da plataforma movel
        if (_plat.object_index == obj_plat_movel)
        {
            _plat.direction = choose(0, 180);
        }
        
        //criando açai
        gera_acai();
        
        //subindo as plataformas
        y_inicial -= random_range(85, 105);
        x_inicial = random_range(32, 128);
         
        //show_debug_message(debug);
        //debug++;
    }
}

gera_acai = function()
{
    var _chance = random(99);
    
    //chance de 40% de aparecer um açai em qualquer plataforma
    if (_chance > 60)
    {
        //criando o açai em cima da plataforma
        var _acai = instance_create_layer(random_range(32, 128), y_inicial - 15, layer, obj_acai);
        
        //mudando o image_index do acai
        _acai.image_index = irandom_range(0, 2);
    }
}