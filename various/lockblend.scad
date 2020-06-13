t = 1.2;
tolerance = 0.98;

hull_x = 51.5;
hull_y = 13.5;
hull_z = 6.0;

$fn=72;

module border() {
    minkowski() {
        cube([hull_x, hull_y, t-1]);
        cylinder(r=t, h=1);
    }
}

module hole() {
    cylinder(h = t, r = 2.7);
}

module hull() {
    
    difference() {
        union() {
            translate([-t, -t, 0]) border();
            minkowski() {
                cube([hull_x-2*t, hull_y-2*t, hull_z-1]);
                cylinder(r=t, h=1);
            }
        }
    
        translate([0, 0, t]) cube([hull_x-2*t, hull_y-2*t, hull_z-t]);
        
        translate([hull_x/2-t, hull_y/2-t, 0]) hole();
    }
}

translate([0, 0, 0]) hull();

//translate([-1.9*t, hull_y/4-t, t+2]) rotate([0, 23, 0]) cube([1*t, hull_y/2, hull_z/2]);

translate([-t, hull_y/4-t, t+3]) rotate([270, 0, 0]) scale ([0.5, 1, 1]) cylinder(h=hull_y/2, d=2*t);
translate([-t+hull_x, hull_y/4-t, t+3]) rotate([270, 0, 0]) scale ([0.5, 1, 1]) cylinder(h=hull_y/2, d=2*t);