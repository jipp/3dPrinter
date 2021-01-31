$fn = 72;

t = 2;
holder_x = 1.25;
holder_y = 14;
holder_z = 6;
distance = 0.75;

cylinder(2, 10, 10);

module holder() {
    union() {
        translate([(holder_x+distance)/2, 0, 0]) cube([holder_x, holder_y, holder_z], true);
        translate([-(holder_x+distance)/2, 0, 0]) cube([holder_x, holder_y, holder_z], true);
        }
}

translate([0, 0, t+3]) holder();