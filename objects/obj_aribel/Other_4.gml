var target_layer = layer_get_id("Player");

if (target_layer != -1 && layer_get_id(layer) != target_layer)
{
    var new_player = instance_create_layer(x, y, "Player", object_index);
    
    // copy relevant state
    new_player.direction = direction;
    new_player.image_index = image_index;
    new_player.image_speed = image_speed;
    new_player.speed = speed;
    
    instance_destroy(); // remove the old one
}
