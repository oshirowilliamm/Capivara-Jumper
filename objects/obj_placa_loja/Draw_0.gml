draw_self();
draw_set_font(fnt_placa);
draw_set_halign(1);
draw_set_valign(1);

//boneco
draw_sprite_ext(sprite, 0, x, y + 5, escala, escala, 0, cor, 1);

//preco
var _ypreco = y + 35;
draw_sprite_ext(spr_placa_mini, 0, x, _ypreco, 1, 1, 0, cor_preco, 1);
draw_sprite_ext(spr_acai, 2, x - 7, _ypreco, 1, 1, 0, cor_preco, 1);

draw_set_colour(cor_preco);
draw_text_transformed_colour(x + 8, _ypreco + 1, preco, .5, .5, 0, c_black, c_black, c_black, c_black, 1); //sombra
draw_text_transformed(x + 7, _ypreco, preco, .5, .5, 0); //texto normal
draw_set_colour(c_white);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);