$fn = 72;

module normal() {
    difference() {
        cylinder(2, 13, 11);    
        cylinder(2, 11, 11);
    }
}

module home() {
    difference(){
        union()
        {
            translate([0, 0, 1]) cube([2, 35, 2], true);
            translate([0, 0, 1]) cube([35, 2, 2], true);
            cylinder(2, 13, 11);
        }
        cylinder(2, 11, 11);
    }
}

module dead() {
    difference(){
        cylinder(3, 13, 11);
        cylinder(3, 11, 11);
    }
    translate([0, 0, 0.5]) cube([2, 22, 1], true);
    translate([0, 0, 0.5]) cube([22, 2, 1], true);
}

normal();