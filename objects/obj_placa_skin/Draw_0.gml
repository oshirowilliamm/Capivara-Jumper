draw_self();
draw_set_font(fnt_placa);
draw_set_halign(1);
draw_set_valign(1);

//boneco
draw_sprite_ext(sprite, 0, x, y + 5, escala, escala, 0, cor, 1);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);