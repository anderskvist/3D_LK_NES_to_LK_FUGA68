outerheight = 25; /* minimum 10mm */
resolution = 50;

module LK_BOX () {
	difference() {
		translate([-45/2,-45/2,-1]) cube([45,45,outerheight+2]);

		rotate([0,0,0]) translate([-45/2+10,-45/2+10,0]) difference() {
			translate([-20,-20,-2]) cube([20,20,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 10, 10, $fn=resolution);
		}
		rotate([0,0,90]) translate([-45/2+10,-45/2+10,0]) difference() {
			translate([-20,-20,-2]) cube([20,20,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 10, 10, $fn=resolution);
		}
		rotate([0,0,180]) translate([-45/2+10,-45/2+10,0]) difference() {
			translate([-20,-20,-2]) cube([20,20,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 10, 10, $fn=resolution);
		}
		rotate([0,0,270]) translate([-45/2+10,-45/2+10,0]) difference() {
			translate([-20,-20,-2]) cube([20,20,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 10, 10, $fn=resolution);
		}

	} 
}

module C_BOX () {
	difference() {
		translate([-73/2,-68/2,0]) cube([73,68,outerheight]);

		rotate([0,0,0]) translate([-73/2+0.5,-68/2+0.5,0]) difference() {
			translate([-1,-1,-2]) cube([1,1,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 0.5, 0.5, $fn=resolution);
		}
		rotate([0,0,90]) translate([-68/2+0.5,-73/2+0.5,0]) difference() {
			translate([-1,-1,-2]) cube([1,1,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 0.5, 0.5, $fn=resolution);
		}
		rotate([0,0,180]) translate([-73/2+0.5,-68/2+0.5,0]) difference() {
			translate([-1,-1,-2]) cube([1,1,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 0.5, 0.5, $fn=resolution);
		}
		rotate([0,0,270]) translate([-68/2+0.5,-73/2+0.5,0]) difference() {
			translate([-1,-1,-2]) cube([1,1,outerheight+4]);
			translate([-0,-0,-2]) cylinder(outerheight+4, 0.5, 0.5, $fn=resolution);
		}
		union() {		
			translate([-25,-25,-1]) cylinder(outerheight+2, 2.25, 2.25, $fn=resolution);
			translate([-25,-25,7]) cylinder(outerheight, 4.25, 4.25, $fn=resolution);
			translate([25,-25,-1]) cylinder(outerheight+2, 2.25, 2.25, $fn=resolution);
			translate([25,-25,7]) cylinder(outerheight, 4.25, 4.25, $fn=resolution);
			translate([25,25,-1]) cylinder(outerheight+2, 2.25, 2.25, $fn=resolution);
			translate([25,25,7]) cylinder(outerheight, 4.25, 4.25, $fn=resolution);
			translate([-25,25,-1]) cylinder(outerheight+2, 2.25, 2.25, $fn=resolution);
			translate([-25,25,7]) cylinder(outerheight, 4.25, 4.25, $fn=resolution);
		}
	}
}

difference() {
	C_BOX();
	LK_BOX();
}