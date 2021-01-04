$fn=72;

D=2;

scale([0.6, 0.6, 1])
{
    translate([0, 0, 0]) cylinder(D, 10, 10, true);
    translate([4, 2, 0]) cylinder(D, 10, 10, true);
    translate([12, -3, 0]) cylinder(D, 10, 10, true);
    translate([17, 2, 0]) cylinder(D, 10, 10, true);
    translate([20, 1, 0]) cylinder(D, 10, 10, true);
}