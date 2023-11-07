class Animal{
  String? name;
  Animal(this.name);
}

class Dog extends Animal{
  Dog() : super("poppy");
}

class Cat extends Animal{
  Cat(super.name);
}

void main(){
  Dog d = Dog();
  Cat c = Cat("posy");
}