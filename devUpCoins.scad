$fn=150;

module logo() {
translate([-20,-16,3]) 
  linear_extrude(height=2, center=true) 
    scale([.5,.5,0]) 
      import("DU2017_working.dxf");
}

module coinOne() {
  difference() {
    cylinder(h=4,r=25);
    translate([0,0,2]) cylinder(h=4,r=22);
  }
  
  logo();
}

module coinTwo() {
  difference() {
    linear_extrude(height=4) circle(r=29,$fn=6);
    translate([0,0,2]) linear_extrude(height=5) circle(r=26,$fn=6);
  }
  logo();
}

module coinThree() {
  rotate(a=[0,0,90]) {
    difference() {
      linear_extrude(height=4) circle(r=29,$fn=5);
      translate([0,0,2]) linear_extrude(height=5) circle(r=26,$fn=5);
    }
  }
  translate([1,1,0]) logo();
}



scale([.75,.75,1]) translate([-30,30,0]) coinOne();
scale([.75,.75,1]) translate([-30,-30,0]) coinTwo();
scale([.75,.75,1]) translate([30,-30,0]) coinThree();