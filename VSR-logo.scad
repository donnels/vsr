// Simple logo experiments for Virtual Space and Global Communications Research

//filename="VSR-Hershey.svg";
logoFilename="VSR-SANS-B.svg";
logoDepth=1;
logoDPI=96;
logoColor="#00e";
logoVisFilename="vsagcrd-thick-block.stl";

//import some inkscape SVG text
color(logoColor) 
    linear_extrude(logoDepth) 
        import(file = logoFilename, center = false, dpi = logoDPI);
        
//import stl
color("#0f0")
    translate([80,10,0]) 
        scale([.75,.75,.75])
            rotate([-10,0,0])
                import(file = logoVisFilename, center = false);