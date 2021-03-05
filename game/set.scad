x = 155/2;
y = 20;
//z = 20*2/3;
z = 20;
t = 3;
m=t/2;
//m=t/3;

module hull() {
    difference() {
        cube([x+t+1, y+t+1, z+t/2]);
        translate([t/2, t/2, t/2]) cube([x+1, y+1, z]);
        translate([t+1, t+1, 0]) cube([x/2-3, y-2, z]);        
        translate([t+1.5+x/2, t+1, 0]) cube([x/2-3, y-2, z]);        
    }
}

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

module three() {
    difference() {
        cube([x, y, z]);
        translate([(t+m)/2, (t+m)/2, t/2]) {
            $fn=50;
            rotate([0, 0, 0]) minkowski() {
                cube([(x-t-m)/3-t*2/3, y-t-m, z+t/2]);
                cylinder(m);
            }
        }
        translate([(t+m)/2+x/3, (t+m)/2, t/2]) {
            $fn=50;
            rotate([0, 0, 0]) minkowski() {
                cube([(x-t-m)/3-t*2/3, y-t-m, z+t/2]);
                cylinder(m);
            }
        }
        translate([(t+m)/2+x*2/3, (t+m)/2, t/2]) {
            $fn=50;
            rotate([0, 0, 0]) minkowski() {
                cube([(x-t-m)/3-t, y-t-m, z+t/2]);
                cylinder(m);
            }
        }
    }
}

//hull();
//one();
two();
//three();
