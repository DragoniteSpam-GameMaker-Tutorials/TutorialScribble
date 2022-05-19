for (var i = 0; i < 3; i++) {
    draw_sprite_ext(spr_hearts, 0, 64 + 72 * i, 64, 4, 4, 0, c_white, 1);
}

var text = "Oh, there once was a hero named [c_red]Ragnar the Red[/c], who came riding to [c_white]Whiterun[/c] from old Rorikstead!";

draw_sprite_stretched(spr_nineslice, 0, 0, window_get_height() - 128, window_get_width(), 128);
    
draw_set_font(fnt_game);
draw_set_color(c_black);
draw_text_scribble_ext(32, window_get_height() - 96, text, window_get_width() - 64);