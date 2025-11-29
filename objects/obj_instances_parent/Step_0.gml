
/// obj_ySortedParent – End Step Event

if (ysort_enabled) {
    // Basic version: sort by y position
    depth = y + ysort_offset;

    // If you prefer to anchor to the *bottom* of the sprite’s bbox,
    // you can instead use:
    // depth = bbox_bottom + ysort_offset;
}


