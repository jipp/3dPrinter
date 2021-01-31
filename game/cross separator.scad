difference() {
    union() {
        cube([40, 5, 5], true);
        cube([5, 40, 5], true);
    }
    rotate([0, 0, 45]) cube([5.25, 5.25, 5.25], true);
}

