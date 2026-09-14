if (fishing) {
    if (!instance_exists(current_fish)) {
        fishing = false;
        current_fish = noone;
        exit;
    }

    fishing_bar -= bar_decay;

    if (mouse_check_button_pressed(mb_left)) {
        fishing_bar += bar_gain;
    }

    fishing_bar = clamp(fishing_bar, 0, bar_max);

    if (fishing_bar >= bar_max) {
        score += current_fish.fish_value;
        instance_destroy(current_fish);
        fishing = false;
        current_fish = noone;
    } else if (fishing_bar <= 0) {
        current_fish.being_caught = false;
        fishing = false;
        current_fish = noone;
    }
}