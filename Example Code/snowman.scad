// union() joins everything together
union(){

	// base (round things don't stick very well)
	cube([20,20,2]);

	// bottom
	translate([10,10,10]){
		sphere(r=10,$fn=50);
	}

	// middle
	translate([10,10,25]){
		sphere(8,$fn=50);
	}

	// top (head)
	translate([10,10,38]){
		sphere(7,$fn=50);

		// eyes
		translate([-3,-5,3]){
			sphere(2,$fn=50);
		}
		translate([3,-5,3]){
			sphere(2,$fn=50);
		}
		
		// nose
		translate([0,-5,0]){
			rotate([90,0,0]){
				cylinder(5,2,.1,$fn=50);
			}
		}
	}
}
