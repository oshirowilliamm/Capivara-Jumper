draw_set_font(fnt_game);
draw_set_halign(1);
draw_set_valign(1);

//desenhando o titulo
var _titulo1 = "CAPIVARA";
var _titulo2 = "JUMPER";

var _x = room_width / 2;
var _y = 50;

//sombra
draw_set_colour(c_black);
draw_text_transformed(_x + 2, _y + 2, _titulo1, escala, escala, 0);

//texto
draw_set_colour(#ffde21);
draw_text_transformed(_x, _y, _titulo1, escala, escala, 0);
draw_set_colour(-1);

var _y2 = _y + 40;

//sombra2
draw_set_colour(c_black);
draw_text_transformed(_x + 2, _y2 + 2, _titulo2, escala, escala, 0);

//texto2
draw_set_colour(#ffde21);
draw_text_transformed(_x, _y2, _titulo2, escala, escala, 0);
draw_set_colour(-1);


draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);