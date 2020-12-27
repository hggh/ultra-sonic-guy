$fn=190;

module eye($foo=true) {
    difference() {
        cylinder(d=16, h=8, $fn=90);
        if ($foo == true) {
            translate([0, 0, -1]) cylinder(d=12, h=10, $fn=90);
        }
    }
}

module ledholder() {
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
}

module leg() {
    difference() {
        cube([15, 15, 40]);
        translate([1.2, 1.2, 1.2]) {
            cube([15-2.4, 15-2.4, 40]);
        }
    }
}

module arm($switch=false) {
    difference() {
        union() {
            cube([30, 11, 11]);
            translate([0, 0, 11]) {
                cube([7, 11, 7]);
            }
        }
        if ($switch == true) {
            translate([15, -1, 3])
            cube([10, 3, 5]);
            translate([3, -1, 4]) cube([20, 2, 2]);
            translate([3, -1, 4]) cube([2, 2, 30]);
            translate([3, -1, 17]) cube([2, 7, 2]);
        }
    }
}

module mund() {
    cube([34, 5, 4.76]);
}

module kopf() {
    difference() {
        cube([70, 40, 50]);

        translate([21.43, 80, 30.61]) {
            rotate([90, 0, 0]) cylinder(d=8, h=90);
        }
        translate([48.43, 80, 30.61]) {
            rotate([90, 0, 0]) cylinder(d=8, h=90);
        }
        translate([1.2, 2, -1.2]) {
            cube([70 - 2.4, 100, 50]);
        }
    }
   
    translate([0, 1, 14]) {
        difference() {
            cube([70, 40-1, 1.2]);

            translate([10, 30, -1]) {
                cylinder(d=10, h=4);
            }
        }
    }
}


module body() {
    difference() {
        cube([50, 40, 55]);
        
        translate([1.2, 2, 1.2]) {
            cube([50-2.4, 100, 55-2.4]);
        }
        translate([10, -1, 12.5]) {
            cube([30, 30, 30]);
        }
        translate([18.5, 13.5, 55-3]) {
            cube([13.2, 24, 4]);
        }
        
        // arms
        translate([-1, 20, 45]) {
            rotate([0, 90, 0]) cylinder(d=3, h=80);
        }        
    }
}

translate([-10, 0, 60]) {
    kopf();
}

translate([10, -20, 70]) {
    mund();
}


translate([10, -20, 95]) {
    rotate([90, 0, 0]) eye();
}

translate([29, -20, 95]) {
    rotate([90, 0, 0]) eye();
}


body();

translate([5, 0, -50]) {
    leg();
}

translate([30, 0, -50]) {
    leg();
}

translate([-20, 80, 50]) {
    rotate([0, 90, 0]) arm();
}

translate([20, 91, 50]) {
    rotate([180, 90, 0]) arm(true);
}

translate([5, 50, 10]) {
    rotate([90, 0, 0]) ledholder();
}
