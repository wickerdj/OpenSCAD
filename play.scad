$fn=100;

z=20;
x=5;
y=7;


cylinder(z,x,y);

translate([0,10,10]) rotate([90,0,0]) cylinder(z,x,y);

translate([-10,0,10]) rotate([0,90,0]) cylinder(z,x,y);