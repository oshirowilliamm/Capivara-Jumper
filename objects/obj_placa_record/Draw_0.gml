draw_self();

draw_set_font(fnt_placa);
draw_set_halign(1);
draw_set_valign(1);

var _texto = "MAIOR\nPONTUAÇÃO\n" + string(round(pontos));

//sombra
draw_set_colour(c_grey);
draw_text_transformed(x + 1, y + 1, _texto, escala, escala, 0);

//texto
draw_set_colour(c_black);
draw_text_transformed(x, y, _texto, escala, escala, 0);
draw_set_colour(-1);


draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);