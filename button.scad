$fn=64;

overallButtonRadius=20;

buttonHoldRadius=3;

difference() {
    cylinder(h=5,r=overallButtonRadius);
    translate(v=[7,0,-1]) {
        cylinder(h=7,r=buttonHoldRadius);
    }
    translate(v=[-7,0,-1]) {
        cylinder(h=7,r=buttonHoldRadius);
    }
    translate(v=[0,7,-1]) {
        cylinder(h=7,r=buttonHoldRadius);
    }
    translate(v=[0,-7,-1]) {
        cylinder(h=7,r=buttonHoldRadius);
    }

    translate([0,0,4]) {
        minkowski() {
            cylinder(h=5,r=overallButtonRadius-4);
            sphere(2);
        }
    }    
}

