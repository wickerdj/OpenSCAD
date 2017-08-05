$fn=150;

module logo() {
translate([-20,-16,3]) 
  linear_extrude(height=2, center=true) 
    scale([.5,.5,0]) 
      import("DU2017_working.dxf");
}

module coinOne() {
  difference() {
    cylinder(h=5,r=25);
    translate([0,0,3]) cylinder(h=5,r=22);
  }
  
  logo();
}

module coinTwo() {
  difference() {
    linear_extrude(height=5) circle(r=29,$fn=6);
    translate([0,0,3]) linear_extrude(height=5) circle(r=26,$fn=6);
  }
  logo();
}




translate([0,30,0]) coinOne();
translate([0,-30,0]) coinTwo();