for (var i = 0; i < 3; i++) {
    draw_sprite_ext(spr_hearts, 0, 64 + 72 * i, 64, 4, 4, 0, c_white, 1);
}

var text = "Oh, there once was a hero named [c_red]Ragnar the Red[/c], who came riding to [c_white]Whiterun[/c] from old Rorikstead! And the braggart did swagger and brandish his blade, as he told of bold battles and the [c_yellow]gold[/c] he had made!~";

draw_sprite_stretched(spr_nineslice, 0, 0, window_get_height() - 128, window_get_width(), 128);

var text_x = 32;
var text_y = window_get_height() - 96;

draw_circle(text_x, text_y, 8, false);
draw_circle_colour(text_x, text_y, 8, c_black, c_black, true);

var scribble_object = scribble(text)
    .starting_format("fnt_game", c_black)
    .wrap(960)
    /*.line_spacing(32)
    .align(fa_left, fa_top)
    .origin(100, 100)
    .bezier(
        0, 0,
        640, -160,
        720, 160,
        1000, -64,
    );*/

scribble_object.draw(text_x, text_y);

var bbox = scribble_object.get_bbox(text_x, text_y);

draw_set_colour(c_black);
draw_rectangle(bbox.left, bbox.top, bbox.right, bbox.bottom, true);