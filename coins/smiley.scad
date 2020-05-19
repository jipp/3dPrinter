$fn = 72;

h = 2.33;
d = 23.25;
eye = 4;

difference()
{
    cylinder(h=h, d=d, center=true);
    translate([d/5, d/5, 0]) scale([1, 1.5, 1]) cylinder(h=h, d=eye, center=true);
    translate([-d/5, d/5, 0]) scale([1, 1.5, 1]) cylinder(h=h, d=eye, center=true);
    
    translate([0, -1, -h/2]) difference()
    {
        cylinder(h=h/2, d=d*2/3, center=true);
        translate([0, 7, 0]) cylinder(h=h/2, d=d*3/3, center=true);
    }

    translate([0, -9, h/2]) rotate ([180, 0, 0]) difference()
    {
        cylinder(h=h/2, d=d*2/3, center=true);
        translate([0, 7, 0]) cylinder(h=h/2, d=d*3/3, center=true);
    }
}