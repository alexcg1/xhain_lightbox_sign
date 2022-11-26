include <imports/lasercut/lasercut.scad>

thickness = 3.1;
x = 2000/4;
y = 20;
z = 120; 


for (sides =[6])
{
    color("Gold",0.75) translate([100*(sides-4),0,0]) 
        lasercutoutBox(thickness = thickness, x=x, y=y, z=z, 
        sides=sides, num_fingers=4);
}
