sizeDice = 16;

t = 1;

sizeX = sizeDice + 2*t;
sizeY = sizeDice + 2*t;
sizeZ = sizeDice + t;

holderX = 1;
holderY = 14;
holderZ = 6;
holderAngle = 45;
holderDistance = 0.5;

module dice(numberDices = 1, angle = 0)
{
    rotate([0, 0, angle]) translate([-sizeX/2, -sizeY/2, 0]) difference()
    {
        cube([sizeX, sizeY, sizeZ * (numberDices - 0.33)]);
        translate([t, t, t]) cube([sizeDice, sizeDice, sizeDice * numberDices]);
        translate([2*t, 0, t]) cube([sizeDice - 2*t, sizeDice + 2*t, sizeDice * numberDices]);
    }
}

module holder(showDirection = false, angle = 0)
{
    rotate([0, 0, angle])
    {
        translate([0, 0, t/2]) cube([sizeX, sizeY, t], true);
        translate([0, 0, holderZ/2+t]) rotate([0, 0, holderAngle])
        {
            union() {
                translate([(holderX + holderDistance)/2, 0, 0]) cube([holderX, holderY, holderZ], true);
                translate([-(holderX + holderDistance)/2, 0, 0]) cube([holderX, holderY, holderZ], true);
            }
        }
        if (showDirection)
        {
            translate([sizeX/2 - 3*1.5, sizeY/2 - 3*1.5, t]) cylinder($fn = 3, h = t, r = 3, true);
        }
    }
}

module piece(name = [""])
{
    for (positionY = [0:1:len(name)-1] )
    {
        for (positionX = [0:1:len(name[positionY])-1] )
        {
            if (name[positionY][positionX] == "A")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) holder(true, 0);
            }
            else if (name[positionY][positionX] == "a")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) holder(true, 90);
            }
            else if (name[positionY][positionX] == "B")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) holder(false, 0);
            }
            else if (name[positionY][positionX] == "b")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) holder(false, 90);
            }
            else if (name[positionY][positionX] == "V")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) dice(1, 0);
            }
            else if (name[positionY][positionX] == "v")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) dice(1, 90);
            }
            else if (name[positionY][positionX] == "W")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) dice(2, 0);
            }
            else if (name[positionY][positionX] == "w")
            {
                translate([sizeX * positionX, sizeY * positionY, 0]) dice(2, 90);
            }
        }
    }
}

// A, B, AV, AW, WAW, AWB, WAWW, WAWWW, bab
//piece([" w ", "WBW", " w "]);
holder(0, 0);