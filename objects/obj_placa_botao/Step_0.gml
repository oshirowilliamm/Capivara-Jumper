var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_mouse_sobre)
{
    //efeito de ficar maior
    escala = lerp(escala, 1.2, .3);
    y = lerp(y, y_inicial - 4, .3);
    
    //clicando
    if (_mouse_click)
    {
        room_goto(destino);
    }
}
else
{
    //voltando ao tamanho normal
    escala = lerp(escala, 1, .3);
    y = lerp(y, y_inicial, .3);
}

image_xscale = escala;
image_yscale = escala;