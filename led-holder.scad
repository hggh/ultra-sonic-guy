$fn = 180;

difference() {
    cube([30 + 10, 30 + 10, 6]);
    
    translate([5, 5, -1]) {
        cube([14, 14, 5]);
    }
    
    translate([5, 5 + 2 + 14, -1]) {
        cube([14, 14, 5]);
    }
    
    translate([5 + 2 + 14, 5, -1]) {
        cube([14, 14, 5]);
    }
    
    translate([5 + 2 + 14, 5 +2 +14, -1]) {
        cube([14, 14, 5]);
    }
    
    translate([5+7, 5+7+2+14, -1]) cylinder(d=5.5, h=30);
    translate([5+7+2+14,5+7 , -1]) cylinder(d=5.5, h=30);
    translate([5+7+2+14, 5+7+2+14, -1]) cylinder(d=5.5, h=30);
    translate([5+7, 5+7, -1]) cylinder(d=5.5, h=30);
}