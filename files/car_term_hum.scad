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

        translate(v = [-30, 0, 7.5]) {
            rotate([0, 0, 90]) {
                dht11();
            }
        }
    }
}
/* end of import */
translate(v=[5,0,0]){
    allSensors();
}
cube([60,48,2],center=true);