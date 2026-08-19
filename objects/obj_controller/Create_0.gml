y_pontos = 250;
pontos = 0;

pontuacao = function()
{
    //vai ganhando pontos a cada altura nova que o player atinge
    with (obj_player) 
    {
    	if (other.y_pontos > y)
        {
            other.y_pontos = y;
            
            //ganhando pontos
            other.pontos += .5;
            global.pontos = round(other.pontos);
        }
    }
}

desenha_pontos = function()
{
    draw_set_font(fnt_game);
    draw_set_halign(1);
    
    //posição
    var _x = display_get_gui_width() div 2;
    var _y = 10;
    
    //sombra
    draw_set_colour(c_black);
    draw_text(_x + 4, _y + 4, global.pontos);
    
    //texto
    draw_set_colour(#ffde21);
    draw_text(_x, _y, global.pontos);
    draw_set_colour(-1);
    
    draw_set_font(-1);
    draw_set_halign(-1);
}

desenha_acai_pontos = function()
{
    draw_set_font(fnt_game);
    
    //posição
    var _xspr = 30;
    var _yspr = 40;
    var _x = _xspr + 40;
    var _y = _yspr - 22;
    
    //sprite
    draw_sprite_ext(spr_acai, 2, _xspr, _yspr, 4, 4, 0, c_white, 1);
    
    //sombra
    draw_set_colour(c_black);
    draw_text_transformed(_x + 4, _y + 4, global.acai, .5, .5, 0);
    
    //texto
    draw_set_colour(c_white);
    draw_text_transformed(_x, _y, global.acai, .5, .5, 0);
    draw_set_colour(-1);
    
    draw_set_font(-1);
}