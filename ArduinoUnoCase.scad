// Project Enclosure Video series from Paul Randall
// https://www.youtube.com/watch?v=lPgLZgnbREk

$fn=50;

// Lenght of enclosure
LENGTH=53.54;

// Width of enclosure
WIDTH=68.58;

// Radiuses of corners
RADIUS=1;

// Offset of walls
OFFSET=1;

// Height of enclosure
HEIGHT=10;





filletedPosts();
usbandpower();


// Top of Enclosure 
translate([-15,-15,-15]) {
    difference() {
        minkowski() {
            cube([WIDTH, LENGTH, HEIGHT], center=true);
            sphere(RADIUS);
        }

        // Chop of top
        translate([0,0,HEIGHT/2]) { 
            cube([WIDTH + RADIUS*2 + OFFSET,
                LENGTH + RADIUS*2 + OFFSET,
                HEIGHT+1], center=true); 
            }

        // Hollow inside
        minkowski(){
            cube([WIDTH - RADIUS - OFFSET,
                LENGTH - RADIUS - OFFSET,
                HEIGHT - 2], center=true);
            sphere(RADIUS);
        }

        // Cut out outter ledge
        translate([0,0,-1]) {
            difference() {
                linear_extrude(5) {
                    minkowski() {
                        square([WIDTH+OFFSET,
                            LENGTH+OFFSET], center=true);
                        circle(RADIUS);
                    }
                }
                
                translate([0,0,-0.1]) {
                    linear_extrude(6) {
                        minkowski() {
                            square([WIDTH-OFFSET,
                                LENGTH-OFFSET], center=true);
                            circle(RADIUS);
                        }
                    }
                }
            }
        }
    }
}

// Bottom of Enclosure
translate([0,0,0]) {
    difference() {
        minkowski(){
            cube([WIDTH, LENGTH, HEIGHT], center=true);
            sphere(RADIUS);
        }
        
        // Chop of top
        translate([0,0,HEIGHT/2]) { 
            cube([WIDTH + RADIUS*2 + OFFSET,
                LENGTH + RADIUS*2 + OFFSET,
                HEIGHT+1], center=true); 
        }
    
        // Hollow inside
        minkowski(){
            cube([WIDTH - RADIUS - OFFSET,
                LENGTH - RADIUS - OFFSET,
                HEIGHT - 2], center=true);
            sphere(RADIUS);
        }
    
        //Cut out ledge
        translate([0,0,-1]) {
            linear_extrude(10) {
                square([WIDTH+OFFSET,
                        LENGTH+OFFSET], center=true);
                circle(RADIUS);
            }
        }
        
        
        
    }
}

module usbandpower() {
    translate([-WIDTH/2, -LENGTH/2, -HEIGHT/2]) {
        power_size=[13.208, 8.89,10.922];
        power_postion=[-1.524,3.81,1.524];

        usb_size=[16.218, 11.849,10.668];
        usb_postion=[-6.35,32.601,1.524];

        translate(power_postion) cube(power_size);
        translate(usb_postion) cube(usb_size);
    }
}


module filletedPosts() {
    translate([-WIDTH/2, -LENGTH/2, -HEIGHT/2]) {
        post1=[13.97,2.54,0];
        post2=[66.04,7.02,0];
        post3=[66.04,35.6,0];
        post4=[15.24,50.8,0];

        offset=[-12,-5,0];

        translate(post1) { screwmount(); }
        translate(post1 + offset) { text(str(1)); }

        translate(post2) { screwmount(); }
        translate(post2 + offset) { text(str(2)); }

        translate(post3) { screwmount(); }
        translate(post3 + offset) { text(str(3)); }

        translate(post4) { screwmount(); }
        translate(post4 + offset) { text(str(4)); }
    }

    module screwmount() {
        difference() {
            cylinder(r=2.5, h=10);
            translate([0,0,-1]) { cylinder(r=1.5, h=12); }
        }

        rotate_extrude(convexivity=10 ) {
            translate([2.5,0,0]) {
                intersection() {
                    square(5);
                    difference() {
                        square(5, center=true);
                        translate([2.5,2.5]) { circle(2.5); }
                    }
                }
            }
        }
    }
    
}