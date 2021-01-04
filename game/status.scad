$fn=72;

D=2;

module planets()
{
translate([-2.5, -2.5, D]) sphere(2);
translate([1, 2.5, D]) sphere(2.5);
translate([3, -2, D]) sphere(1.5);
translate([-3, 3, D]) sphere(1.5);
translate([0, -5, D]) sphere(2);
}

cylinder(D, d=15, true);
cylinder(10, d=3, true);

difference()
{
    planets();
    translate([0, 0, -D]) cylinder(D, r=15, true);
}