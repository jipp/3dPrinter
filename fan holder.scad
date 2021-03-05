$fn=180;

t=2;

fs=30;
fd=28;
hd=3.3;
rd=1.4;

sx=5;
sz=20;

difference() {
    cube([fs, fs, t]);
    translate([fs/2, fs/2, 0]) cylinder(t, d=fd);
    translate([rd+hd/2, rd+hd/2, 0]) cylinder(t, d=hd);
    translate([fs-rd-hd/2, rd+hd/2, 0]) cylinder(t, d=hd);
    translate([rd+hd/2, fs-rd-hd/2, 0]) cylinder(t, d=hd);
    translate([fs-rd-hd/2, fs-rd-hd/2, 0]) cylinder(t, d=hd);
}

translate([fs, 0, 0]) cube([sx, fs, t]);
translate([fs+sx-t, 0, 0]) cube([2, fs, sz]);