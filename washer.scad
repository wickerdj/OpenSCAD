// Washer 

// To Do: create parameters for the dimensions
// To Do: use the parameters


$fn=60;

difference() {

cylinder(h=1.5, d=7);
    translate([0,0,-.5] ) { cylinder(h=4, d=3.5); }
}