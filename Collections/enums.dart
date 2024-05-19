void main() {
  final zoo = Zoo([]);
  zoo.addAnimal(Animal.cat);
  zoo.addAnimal(Animal.doggie);
  zoo.addAnimal(Animal.cow);
  for (final animal in zoo.animals) {
    print('$animal: ${animal.sound}');
  }
}

class Zoo {
  final List<Animal> animals;
  
  const Zoo(this.animals);
  
  void addAnimal(Animal animal) {
    animals.add(animal);
  }
}

enum Animal {
  cat("Meow"),
  doggie("Woof"),
  cow("Moo");
  
  final String sound;
  
  const Animal(this.sound);
}

/*
### OUTPUT ###
Animal.cat: Meow
Animal.doggie: Woof
Animal.cow: Moo
*/
