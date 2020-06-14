cube = 16 ;

t = 1;

size_x = 2*cube;
size_y = cube+2*t;
size_z = cube+0.5*cube;

difference() {
    cube([size_x, size_y, size_z]);
    translate([2*t, 0, 2*t]) cube([size_x, size_y, size_z]);
    translate([t, t, t]) cube([size_x, size_y-2*t, size_z]);
    translate([t+cube, 0, t]) cube([size_x, size_y, size_z]);
}

translate([27, 0, 0]) {
    rotate([0, 0, 30]) {
        union() {
            translate([0, (size_y-14)/2, t]) cube([1, 14, 6]);
            translate([1.5, (size_y-14)/2, t]) cube([1, 14, 6]);
        }
    }
}
