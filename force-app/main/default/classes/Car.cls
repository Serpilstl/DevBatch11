public class Car {
    public string carColor=' ';
    public string carName=' ';
    integer maxSpeed=150;
    public void switchOn() {
        
        system.debug('starting the car');

        

    }
    public void drive(){
        system.debug('driving '+carName+ 'of color '+carColor);



    }
    public void driveAtMaxSpeed(){
        string drivingDescription='Driving'+carName+'at'+maxSpeed +'km/hr';
        system.debug(drivingDescription);


    }
}
