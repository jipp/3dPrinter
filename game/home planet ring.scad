$fn = 72;

difference(){
    union()
    {
        translate([0, 0, 1]) cube([2, 35, 2], true);
        translate([0, 0, 1]) cube([35, 2, 2], true);
        cylinder(2, 13, 13);
    }
    cylinder(2, 11, 11);
}