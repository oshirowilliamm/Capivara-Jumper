var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (!global.skin[index])
{
    if (_mouse_sobre)
    {
        //efeito de ficar maior
        escala = lerp(escala, 1.2, .3);
        escala_cor = lerp(escala_cor, .6, .1);
        
        //mudando cor se pode comprar
        if (global.acai >= preco)
        {
            cor_final = c_lime;
            
            //comprando a skin
            if (_mouse_click)
            {
                global.skin[index] = true;
                global.acai -= preco;
            }
        }
        else
        {
            cor_final = c_red;
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
    //voltando ao tamanho normal
    escala = lerp(escala, 1, .3);
    escala_cor = lerp(escala_cor, 0, .1);
    cor_inicial = c_gray;
    cor_preco = c_gray;
}

//aplicando as alterações
image_xscale = escala;
image_yscale = escala;
cor = merge_color(cor_inicial, cor_final, escala_cor);
image_blend  = cor;