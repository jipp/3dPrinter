$fn=72;

t=2;

fs=20;
fd=18;
sh=2;

sx=25;
sz=20;

difference() {
    cube([fs, fs, t]);
    translate([fs/2, fs/2, 0]) cylinder(t, d=fd);
    translate([3, 3, 0]) cylinder(t, d=sh);
    translate([fs-3, 3, 0]) cylinder(t, d=sh);
    translate([3, fs-3, 0]) cylinder(t, d=sh);
    translate([fs-3, fs-3, 0]) cylinder(t, d=sh);
}

translate([fs, 0, 0]) cube([sx, fs, t]);
translate([fs+sx-t, 0, 0]) cube([2, fs, sz]);