$fn=90;

t=2;

fs=30;
fd=28;
hd=3.4;
rd=3;

sx=5;
sz=20;

difference() {
    cube([fs+sx, fs, t]);
    translate([fs/2, fs/2, 0]) cylinder(t, d=fd);
    translate([rd, rd, 0]) cylinder(t, d=hd);
    translate([fs-rd, rd, 0]) cylinder(t, d=hd);
    translate([rd, fs-rd, 0]) cylinder(t, d=hd);
    translate([fs-rd, fs-rd, 0]) cylinder(t, d=hd);
}

translate([fs+sx-t, 0, 0]) cube([2, fs, sz]);