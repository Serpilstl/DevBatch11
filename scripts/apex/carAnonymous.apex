//create object of car class.
car tesla=new car();
tesla.carName='model S';
tesla.carColor='Black';
tesla.switchOn();
system.debug('tesla car color'+tesla.carColor);

system.debug('tesla-->'+tesla);
tesla.drive();
tesla.driveAtMaxSpeed();
system.debug('tesla done');
system.debug('bwm created');
car bwm=new car();
bwm.carColor='white';
bwm.switchOn();
system.debug('bwm car color--> '+bwm.carColor);
system.debug('bwm -->'+bwm);
bwm.drive();
bwm.driveAtMaxSpeed();
system.debug('bwm done');

