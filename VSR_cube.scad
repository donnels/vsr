//Script to create a wire mesh cube with 8x8x8 empty spaces
//Virtual Space and Global communications research department logo base object with 8.2 cm side length
//consisting of the multiplied basic primitives of an x,y,and z axis beam iterate in one dimension in loops
module x_beam(){
    cube([82,2,2]);
}
module y_beam(){
    cube([2,82,2]);
}
module z_beam(){
    cube([2,2,82]);
}
module vsr_cube(){
    union(){
        //xbeam
        for (xj=[0:10:80]){
            for (xi=[0:10:80]){
                translate([0,xi,xj])
                x_beam();
            }
        }
        //ybeam
        for (yj=[0:10:80]){
            for (yi=[0:10:80]){
                translate([yi,0,yj])
                y_beam();
            }
        }
        //zbeam
        for (zj=[0:10:80]){
            for (zi=[0:10:80]){
                translate([zi,zj,0])
                z_beam();
            }
        }
    }
}
//basic beam primitives
*y_beam();
*x_beam();
*z_beam();
//basic primitive for VSR logo block.
vsr_cube();
