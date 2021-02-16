x = 155;
y = 20;
z = 20;
t = 3;
m=t/2;

module one() {
    difference() {
        cube([x, y, z]);
        difference() {
            translate([t/2, y/2, z*1]) scale([1, 0.75, 1.5]) rotate([0, 90, 0]) cylinder(x-t, y , y, $fn=3);
            cube([x ,y, t/2]);
            translate([0, 0, -z]) cube([x, y, z]);
        }
    }
}

module two() {
    difference() {
        cube([x, y, z]);
        translate([(t+m)/2, (t+m)/2, t/2]) {
            $fn=50;
            rotate([0, 0, 0]) minkowski() {
                cube([x-t-m, y-t-m, z+t/2]);
                cylinder(m);
            }
        }
    }
}

one();
//two();