max_hspd = 1;
hspd = 0;
max_vspd = 7;
vspd = 0;
grav = .3;

cam_y = y;

controle_player = function()
{
    movimentacao();
    caindo();
    camera_segue();
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
    //se tiver encostando na plataforma
    if (place_meeting(x, y, obj_plataforma))
    {
        //se tiver caindo
        if (vspd > 0)
        {
            //pula
            vspd = -max_vspd;
        }
    }
    //se tiver no ar, sofre gravidade
    else
    {
        vspd = min(vspd + grav, max_vspd);
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