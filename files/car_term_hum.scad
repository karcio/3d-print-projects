/* import sensors for design only */
use <sensors.scad>;

module allSensors(){
    union(){
        translate(v = [0, 0, 0]) {
            arduinoNano();
        }
        translate(v = [0, 0, 6]) {
            nokia5110();
        }

        translate(v = [-30, 0, 7.3]) {
            rotate([0, 0, 90]) {
                dht11();
            }
        }
    }
}
/* end of import */

module sensors(){
    translate(v=[8, 1.5, 0]){
        allSensors();
    }
}
module frame(){
    difference(){
        translate(v=[-32.5, -23.5, -4]){
            cube([65, 48, 12.1], center = false);
        }

        translate(v=[-31.5, -22.5, -3]){
            cube([63, 46, 13.1], center = false);
        }

    }
}

difference(){
    frame();
    sensors();
}

sensors();