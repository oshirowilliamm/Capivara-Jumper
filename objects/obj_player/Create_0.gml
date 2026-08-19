max_hspd = 2;
hspd = 0;
max_vspd = 8;
vspd = 0;
grav = .3;

cam_y = 170;

controle_player = function()
{
    caindo();
    movimentacao();
    camera_segue();
    atravessa_parede();
}

movimentacao = function()
{
    right = keyboard_check(ord("D")) || keyboard_check(vk_right);
    left = keyboard_check(ord("A")) || keyboard_check(vk_left);
    
    hspd = (right - left) * max_hspd;
    x += hspd;
    y += vspd;
}

caindo = function()
{
    //aplicando gravidade
    vspd = min(vspd + grav, max_vspd);
    
    //pegando a instancia de cada plataforma
    var _plat = instance_place(x, y, obj_plataformas);
    
    //se tiver encostando na plataforma
    if (_plat)
    {
        //se tiver caindo
        if (vspd > 0)
        {
            //pula
            vspd = -max_vspd;
            toca_som(snd_jump, .5);
            
            //criando o puff
            instance_create_layer(x, y, layer, obj_player_puff);
            
            //ativa o cair da plat folha
            with (_plat) 
            {
            	if (object_index == obj_plat_folha)
                {
                    cai = true;
                }
            }
        }
    }
}

camera_segue = function()
{
    var _cam = view_camera[0];
    
    //so segue o player se ele ja subiu, se ta caindo, n segue
    if (cam_y > y)
    {
        cam_y = y;
    }
    
    //seguindo player
    camera_set_view_pos(_cam, 0, cam_y - 170);
    
    //morrendo
    if (y > camera_get_view_y(_cam) + camera_get_view_height(_cam) + 10)
    {
        game_restart();
    }
}

atravessa_parede = function()
{
    //esquerda
    if (x < 0)
    {
        x = room_width;
    }
    
    //direita
    if (x > room_width)
    {
        x = 0;
    }
}