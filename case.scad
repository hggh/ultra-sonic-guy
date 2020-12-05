$fn=190;


module kopf() {
    difference() {
        cube([70, 40, 50]);

        translate([21.43, 80, 30.61]) {
            rotate([90, 0, 0]) cylinder(d=16, h=90);
        }
        translate([48.43, 80, 30.61]) {
            rotate([90, 0, 0]) cylinder(d=16, h=90);
        }
        translate([2, 2, -2]) {
            cube([70 - 4, 100, 50]);
        }
    }
    translate([0, 0, 14]) {
        difference() {
            cube([70, 40, 2]);

            translate([10, 30, -1]) {
                cylinder(d=10, h=4);
            }
        }
    }
}


module body() {
    difference() {
        cube([50, 40, 55]);
        
        translate([2, 2, 2]) {
            cube([50-4, 100, 55-4]);
        }
        translate([10, -1, 12.5]) {
            cube([30, 30, 30]);
        }
        translate([19, 14.5, 55-3]) {
            cube([12, 22, 4]);
        }
        
        // arms
        translate([-1, 20, 45]) {
            rotate([0, 90, 0]) cylinder(d=7, h=80);
        }
        
        // legs
        translate([10, 20, -1]) {
            cylinder(d=7, h=20);
        }
        translate([40, 20, -1]) {
            cylinder(d=7, h=20);
        }
    }
}

module mund() {
    cube([34.05, 5, 4.76]);
}


translate([100, 0, 0]) {
    kopf();
}

translate([100, 0, 70]) {
    mund();
}

body();