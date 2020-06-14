size_cube = 16 ;

t = 1;

size_x = 2*size_cube;
size_y = size_cube+2*t;
size_z = size_cube*(1+0.33)+t;

difference() {
    cube([size_x, size_y, size_z]);
    translate([t, t, t]) cube([size_cube, size_cube, size_z]);
    translate([2*t, 0, 2*t]) cube([size_cube-2*t, size_y, size_z]);
    translate([2*t+size_cube, 0, t]) cube([size_x, size_y, size_z]);
}

translate([30, 2, 0]) {
    rotate([0, 0, 30]) {
        union() {
            translate([-0.75, size_y/2, t+3]) cube([1, 14, 6], true);
            translate([0.75, size_y/2, t+3]) cube([1, 14, 6], true);
        }
    }
}
