use <roundedcube.scad>

left();

translate([200, 0, 0])
    right();
    

module left()
{
    union()
    {
        translate([10, 40, 0])
            cube([120, 40, 5]);
        roundedcube([140, 50, 30], false, 10, "zmax");
        translate([140, 10, 0])
            buckle1();
    }
}


module right()
{
    difference()
    {           
        union()
        {
            translate([10, 40, 0])
                cube([200, 40, 5]);
            roundedcube([220, 50, 30], false, 10, "zmax");
        }
        translate([0, 10, 0])
            buckle2();
    }
}


module buckle1()
{
    union()
    {
        translate([-1, 0, 0])    
            cube([50+1, 30, 5]);
        translate([10, 10, 5-1])
            cylinder(5+1, 5, 5);
        translate([20, 20, 5-1])
            cylinder(5+1, 5, 5);
        translate([30, 10, 5-1])
            cylinder(5+1, 5, 5);
        translate([40, 20, 5-1])
            cylinder(5+1, 5, 5);
    }
}


module buckle2()
{
    union()
    {
        translate([-1-0.5, -0.5, -1-0.5])    
            cube([50+1+1, 30+1, 5+1+1]);
        translate([10, 10, 5-1])
            cylinder(5+1+0.5, 5+0.5, 5+0.5);
        translate([20, 20, 5-1])
            cylinder(5+1+0.5, 5+0.5, 5+0.5);
        translate([30, 10, 5-1])
            cylinder(5+1+0.5, 5+0.5, 5+0.5);
        translate([40, 20, 5-1])
            cylinder(5+1+0.5, 5+0.5, 5+0.5);
    }
}
