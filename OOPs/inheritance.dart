// Inheritance

void main() {
  final car = Car();
  print(car.speed);
  car.accelerate();
  print(car.speed);
}

class VehicleParent {
  int speed = 20;
  
  void accelerate() {
    speed += 20;
  }
}

class Vehicle extends VehicleParent {
  int speed = 20;
  
  @override
  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;
}

/*
### OUTPUT ###
20
30
*/
// NOTE: remove accelerate from Vehicle and the output will be 20 40
