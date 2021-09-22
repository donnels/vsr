//Script to create a wire mesh cube with 8x8x8 empty spaces
//Virtual Space and Global communications research department logo base object with 8.2 cm side length
//consisting of the multiplied basic primitives of an x,y,and z axis beam iterate in one dimension in loops
$fn=100;
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
//basic primitive for VSR logo block.
*color("#000",.25) vsr_cube();
*difference(){
   //basic primitive for VSR logo block.
   vsr_cube();
   //Whole to subtract
   hull() {
       translate ([30,50,70]) x_block();
       translate ([10,10,60]) x_block();
       translate ([70,40,50]) x_block();
       translate ([50,00,40]) x_block();
       translate ([20,70,30]) x_block();
       translate ([00,30,20]) x_block();
       translate ([60,60,10]) x_block();
       translate ([40,20,00]) x_block();
   }
}
  hull() {
       translate ([30,50,70]) x_block();
       translate ([10,10,60]) x_block();
       translate ([70,40,50]) x_block();
       translate ([50,00,40]) x_block();
       translate ([20,70,30]) x_block();
       translate ([00,30,20]) x_block();
       translate ([60,60,10]) x_block();
       translate ([40,20,00]) x_block();
   }
module x_block(){
   *color([0,1,0]) translate ([02,02,02]) cube([8,8,8]);
   translate ([6,6,6]) sphere (r=1);
}
//first set
hull() {
   translate ([30,50,70]) x_block();
   translate ([10,10,60]) x_block();
}
hull() {
   translate ([70,40,50]) x_block();
   translate ([50,00,40]) x_block();
}
hull() {
   translate ([20,70,30]) x_block();
   translate ([00,30,20]) x_block();
}
hull() {
   translate ([60,60,10]) x_block();
   translate ([40,20,00]) x_block();
}
//second set
hull() {
   translate ([30,50,70]) x_block();
   translate ([20,70,30]) x_block();
}
hull() {
   translate ([10,10,60]) x_block();
   translate ([00,30,20]) x_block();
}
hull() {
   translate ([70,40,50]) x_block();
   translate ([60,60,10]) x_block();
}
hull() {
   translate ([50,00,40]) x_block();
   translate ([40,20,00]) x_block();
}
//third set
hull() {
   translate ([30,50,70]) x_block();
   translate ([70,40,50]) x_block();
}
hull() {
   translate ([10,10,60]) x_block();
   translate ([50,00,40]) x_block();
}
hull() {
   translate ([20,70,30]) x_block();
   translate ([60,60,10]) x_block();
}
hull() {
   translate ([00,30,20]) x_block();
   translate ([40,20,00]) x_block();
}
