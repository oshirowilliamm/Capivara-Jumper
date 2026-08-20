var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (global.skin[index])
{
    //se ta usando, fica verde
    if (global.skin_atual == sprite)
    {
        cor_inicial = merge_color(c_white, c_lime, .6);
        cor_final = merge_color(c_white, c_lime, .6);
    }
    else
    {
        cor_inicial = c_white;
        cor_final = c_white;
    }
    
    //mouse em cima
    if (_mouse_sobre)
    {
        //efeito de ficar maior
        escala = lerp(escala, 1.2, .3);
        escala_cor = lerp(escala_cor, .6, .1);
        
        //alterando a skin
        if (_mouse_click)
        {
            global.skin_atual = sprite;
        }
    }
    else
    {
        //voltando ao tamanho normal
        escala = lerp(escala, 1, .3);
        escala_cor = lerp(escala_cor, 0, .1);
    }
}
else
{
    cor_inicial = c_gray;
}

//aplicando as alterações
image_xscale = escala;
image_yscale = escala;
cor = merge_color(cor_inicial, cor_final, escala_cor);
image_blend  = cor;