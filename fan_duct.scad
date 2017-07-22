// Fan duct!
wt = 0.5;
fan_xy = 40;
fan_z = 5;
duct_z = 50;
outlet_r = 5;
scale_val = (fan_xy+2*wt)/fan_xy;
 
module duct_inside() {
    translate([0,0,fan_z/2]) hull() {
        cube([fan_xy,fan_xy,fan_z],center=true);
        translate([0,0,duct_z+fan_z/2]) cylinder(r=outlet_r,h=1);
    }  
}
 
module duct() {
    difference() {
        minkowski () {
            duct_inside();
            sphere(r=wt);
        }
        duct_inside();
        translate([0,0,-5]) cube([100,100,10],center=true);
        translate([0,0,5+fan_z+duct_z]) cube([100,100,10],center=true);
    }
}
render() duct();