$fn=64;

union(){
    difference() {
        cube(30, center=true);
        sphere(20, $fn=100);
    }
    translate([0,0,-15])
        cylinder(h=40,r=13.5);
}