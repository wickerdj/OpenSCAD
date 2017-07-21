// https://www.sculpteo.com/blog/2015/09/12/using-openscad-for-3d-printing-is-awesome/
// http://spolearninglab.com/curriculum/software/3d_modeling/openscad_intro.html#


$fn=50;

sidecube=20;
diametersphere=20*1.4;


    intersection() {
        sphere(d=diametersphere, $fn=100);
        cube(sidecube, center=true);
    }



// this is a comment
// we define the cube’s size here to have it to hand..
sidecube=20;
diametersphere=20*1.4;  
// the sphere’s size as a function of the cube for easy scaling

translate([10,10,10]) 
    intersection() {
        sphere(d=diametersphere, $fn=100); //we created a sphere
        cube(sidecube,center=true); //and now a centered cube
    }
