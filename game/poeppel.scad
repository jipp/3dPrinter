$fn=72;

difference() {
    union() {
        cylinder(h=2, d=6);
        translate([0, 0, 2]) sphere(d=2);
    }
    translate([0, 0, 0]) sphere(d=2.5);    
}