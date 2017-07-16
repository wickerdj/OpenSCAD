// OpenSCAD - Model a Bearing in less than ten minutes by Paul Randall https://www.youtube.com/watch?v=kSqpdPrJAqg

$fn=100;

rotate_extrude() {
    difference() {
        union() {
            translate([10.5,0,0]) { square([5,7], center=true); }
            translate([19.5,0,0]) { square([5,7], center=true); }
        }
        translate([14.75,0,0]) { circle( 3.5); }
    }
}

for (ball = [0:30:360 ]) {
    rotate([0,0,ball]) 
    translate([14.75,0,0]) { sphere( r=3.25); }
}