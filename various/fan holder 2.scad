$fn=72;
t=1.5;
d=30;

difference() {
    translate([3-d, 3, 0]) {
        minkowski() {
            cube([85+d-2*3, 56-2*3, t]);
            cylinder(h=1, r=3);
        }
    }
    translate([-d, 0, t]) cube([85+d, 56, t]);
    translate([3.5, 3.5, 0]) cylinder(h=t, d=2.7);
    translate([3.5, 56-3.5, 0]) cylinder(h=t, d=2.7);
    translate([85-3.5, 3.5, 0]) cylinder(h=t, d=2.7);
    translate([85-3.5, 56-3.5, 0]) cylinder(h=t, d=2.7);
    translate([85/2, 0, 0]) scale([7, 3, 1]) cylinder(h=t, d=10);
    translate([85/2, 56, 0]) scale([7, 3, 1]) cylinder(h=t, d=10);
    translate([85, 56/2, 0]) scale([7, 3, 1]) cylinder(h=t, d=10);
    translate([0, 56/2, 0]) scale([7, 3, 1]) cylinder(h=t, d=10);
    translate([-d/2, 0, 0]) scale([d/15, 2, 1]) cylinder(h=t, d=10);
    translate([-d/2, 56, 0]) scale([d/15, 2, 1]) cylinder(h=t, d=10);
}


//difference() {
//    translate([-d, (56-36)/2, 0]) cube([t, 36, 37]);
//    translate([-d, 56/2, 20]) rotate([0,90, 0]) cylinder(t, d=28);
//    translate([-d, 3+(56-30)/2, 5+3]) rotate([0, 90, 0]) cylinder(t, d=3.4);
//    translate([-d, 3+(56-30)/2, 35-3]) rotate([0, 90, 0]) cylinder(t, d=3.4);
//    translate([-d, -3+56-(56-30)/2, 5+3]) rotate([0, 90, 0]) cylinder(t, d=3.4);
//    translate([-d, -3+56-(56-30)/2, 35-3]) rotate([0, 90, 0]) cylinder(t, d=3.4);
//}

// 30 mm
xl = 30;
yl = 30;
dl = 28;
dh = 3.4;
l = 3;
os = 5;
s = 1;

// 40 mm
//xl = 50;
//yl = 50;
//dl = 48;
//dh = 4;
//l = 5;
//os = 5;
//s = 1;

difference() {
    translate([-d, 0, 0]) cube([t*s, 56, yl+os]);
    translate([-d, 56/2, yl/2+os]) rotate([0,90, 0]) cylinder(t*s, d=dl);
    translate([-d, l+(56-xl)/2, l+os]) rotate([0, 90, 0]) cylinder(t*s, d=dh);
    translate([-d, l+(56-xl)/2, yl-l+os]) rotate([0, 90, 0]) cylinder(t*s, d=dh);
    translate([-d, -l+56-(56-xl)/2, l+os]) rotate([0, 90, 0]) cylinder(t*s, d=dh);
    translate([-d, -l+56-(56-xl)/2, yl-l+os]) rotate([0, 90, 0]) cylinder(t*s, d=dh);
}