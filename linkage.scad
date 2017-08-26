// Linkage to connect the Effector to cooling fan shroud

$fn = 60;

difference() {
    linear_extrude(3.5) { offset(r=2) { square([16,3],center=true); } }
    translate([7,0,-1]) { linear_extrude(6){ circle(d=3.4); } }
    translate([-7.5,0,-1]) { linear_extrude(6){ circle(d=3); } }
    translate([-2.5,0,-1]) { linear_extrude(6){ circle(d=3); } }
    translate([-5,0,-1]) { linear_extrude(6){ square([5,3], center=true); } }
}