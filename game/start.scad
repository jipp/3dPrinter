//$fn = 72;

height = 3;
radius = 15;
thickness = 3;
depth = 1;
font = "Liberation Sans:style=Bold Italic";
size = 14;
singleSided = true;

text = "1.";

difference() {
    cylinder(h=height, r1=radius, r2=radius, center=true);
    translate([0, 0, (height - depth)/2]) cylinder(h=depth, r1=radius-thickness, r2=radius-thickness, center=true);
    if (singleSided == false) {
        translate([0, 0, -(height - depth)/2]) cylinder(h=depth, r1=radius-thickness, r2=radius-thickness, center=true);
    }
}

linear_extrude(height / 3) text(text=text, font=font, size=size, valign="center", halign="center");
rotate([180, 0, 0]) linear_extrude(height/2) text(text=text, font=font, size=size, valign="center", halign="center");
