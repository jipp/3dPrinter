module zapf() {
    difference() {
        cube([30, 10, 3]);
        rotate([0, 0, 45]) cube([15, 15, 4]);
        translate([30, 0, 0]) rotate([0, 0, 45]) cube([15, 15, 4]);
    }
}

rotate([180, 0, 0]) zapf();
translate([0, -20, -3]) zapf();