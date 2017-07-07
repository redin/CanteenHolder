$fa = .3;	// minimum angle 
$fs = .3;	// minimum size
difference(){
    cylinder(h=100,d=73);
    translate([0,0,-2])cylinder(h=105,d=30);
    translate([0,0,2])cylinder(h=102,d=70);
    translate([-35,-45,95])rotate([-90,0,0])cylinder(h=102,d=128);
}

//translate([5,0,100]) holder();

translate([52,0,0]){
    difference(){
        grip();
        translate([0,0,40])cube([1,100,90], center=true);
    }
}

module grip(){
    difference(){
        cylinder(h=80,d=34);
        translate([0,0,-1])cylinder(h=85,d=30);
    }
    translate([0,20,40])cube([6,9,80],center=true);
    translate([0,-20,40])cube([6,9,80],center=true);
    translate([-15.43,8.3,40])cylinder(h=80,d=5,center=true);
    translate([-15.43,-8.3,40])cylinder(h=80,d=5,center=true);
}

module holder(){
    difference(){
        cylinder(h=20,d=65);
        translate([0,0,-1])cylinder(h=22,d=60);
        translate([-35,-2.5,-2])cube([10,5,30]);
    }
}
    