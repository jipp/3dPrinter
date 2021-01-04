size_cube = 16 ;

t = 1;

cubesFactor = 2;

size_x = 2*size_cube;
size_y = size_cube+2*t;
size_z = size_cube*(1+0.33)/cubesFactor+t;

holder_x = 1;
holder_y = 14;
holder_z = 6;
angle = 30;
distance = 0.5;

module hull() {
    difference() {
        cube([size_x, size_y, size_z]);
        translate([t, t, t]) cube([size_cube, size_cube, size_z]);
        translate([2*t, 0, 2*t]) cube([size_cube-2*t, size_y, size_z]);
        translate([2*t+size_cube, 0, t]) cube([size_x, size_y, size_z]);
    }
}

module holder() {
    rotate([0, 0, angle]) {
        union() {
            translate([(holder_x+distance)/2, 0, 0]) cube([holder_x, holder_y, holder_z], true);
            translate([-(holder_x+distance)/2, 0, 0]) cube([holder_x, holder_y, holder_z], true);
        }
    }
}

hull();
translate([size_x*3/4+t, size_y/2, t+3]) holder();