$fn=72;

difference() {
    cube([85, 56, 1]);
    translate([3.5, 3.5, 0]) cylinder(h=1, d=2.7);
    translate([3.5, 56-3.5, 0]) cylinder(h=1, d=2.7);
    translate([85-3.5, 3.5, 0]) cylinder(h=1, d=2.7);
    translate([85-3.5, 56-3.5, 0]) cylinder(h=1, d=2.7);
}

translate([-20, (56-30)/2, 0]) cube([20, 30, 1]);

difference() {
    translate([-20, (56-30)/2, 0]) cube([1, 30, 35]);
    translate([-20, 56/2, 20]) rotate([0,90, 0]) cylinder(1, d=28);
    translate([-20, 3+(56-30)/2, 5+3]) rotate([0, 90, 0]) cylinder(1, d=3.4);
    translate([-20, 3+(56-30)/2, 35-3]) rotate([0, 90, 0]) cylinder(1, d=3.4);
    translate([-20, -3+56-(56-30)/2, 5+3]) rotate([0, 90, 0]) cylinder(1, d=3.4);
    translate([-20, -3+56-(56-30)/2, 35-3]) rotate([0, 90, 0]) cylinder(1, d=3.4);
}

