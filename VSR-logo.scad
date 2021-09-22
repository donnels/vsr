// Simple logo experiments for Virtual Space and Global Communications Research

//filename="VSR-Hershey.svg";
logoFilename="VSR-SANS-B.svg";
logoDepth=1;
logoDPI=96;
logoColor="#00e";

//import some inkscape SVG text
color(logoColor) 
    linear_extrude(logoDepth) 
        import(file = logoFilename, center = false, dpi = logoDPI);