// source: https://www.sculpteo.com/blog/2015/09/12/using-openscad-for-3d-printing-is-awesome/

$fn=50;

sidecube=20;
diametersphere=20*1.4;

difference() {
    intersection() {
        sphere(d=diametersphere, $fn=100);
        cube(sidecube, center=true);
    }

    rotate([0,0,0])   translate([0,0,9]) linear_extrude(height=2) 
    text("1",size=10, halign = "center", valign = "center");

    rotate([0,180,0]) translate([0,0,9]) linear_extrude(height=2) 
    text("6",size=10, halign = "center", valign = "center");

    rotate([90,0,0]) translate([0,0,9]) linear_extrude(height=2) 
    text("2",size=10, halign = "center", valign = "center");

    rotate([-90,0,0]) translate([0,0,9]) linear_extrude(height=2) 
    text("5",size=10, halign = "center", valign = "center");

    rotate([0,-90,0]) translate([0,0,9]) linear_extrude(height=2) 
    text("3",size=10, halign = "center", valign = "center");

    rotate([0,90,0])  translate([0,0,9]) linear_extrude(height=2) 
    text("4",size=10, halign = "center", valign = "center");
}
