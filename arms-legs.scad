
module leg() {
    difference() {
        cube([15, 15, 40]);
        translate([1.2, 1.2, 1.2]) {
            cube([15-2.4, 15-2.4, 40]);
        }
    }
}

module arm() {
    cube([30, 11, 11]);
    translate([0, 0, 11]) {
        cube([7, 11, 7]);
    }
}

leg();
translate([20, 0, 0]) leg();

translate([40, 0, 0]) arm();

translate([40, 15, 0]) arm();