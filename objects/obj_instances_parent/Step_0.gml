// obj_instances_parent - Step

if (ysort_enabled) {
    // Objects with a lower bottom (on screen) get a smaller depth -> drawn in front
    depth = -(bbox_bottom + ysort_offset);
}
