// This class uses Abstraction since it has usable methods that
// have hidden complex code within them
class Robot {
  String name;
  String task;
  // This variable uses Encapsulation since it is hidden within the class.
  int _selfDestructionCode = 0123;

  introduce() {
    print("Hello. I am " + name + ". My task is: " + task + ".");
  }

  move() {
    print("Moving...");
  }

  selfDestruct(int code) {
    if (code == this._selfDestructionCode) {
      print("Self destructing in 3...2...1...");
      print("Boom Bada Boom");
    } else {
      print("Self destruct code incorrect. Cannot go boom.");
    }
  }

  Robot(this.name, this.task);
}

// This class uses Inheritance since it inherits from a parent class Robot
class HumanoidRobot extends Robot {
  // This shows Polymorphism since it changes the method it inherited
  @override
  move() {
    super.move();
    print("Using thy legs to move");
  }

  HumanoidRobot(String name, String task) : super(name, task);
}

class Decepticon extends HumanoidRobot {
  @override
  String task = "destroy humans";

  @override
  move() {
    super.move();
    print("Transforming into a car...");
    print("Vroooooom");
  }

  Decepticon(String name) : super(name, "destroy humans");
}

void main() {
  Robot jessie = new Robot("Jessie", "do nothing");
  jessie.introduce();
  jessie.move();
  jessie.selfDestruct(9876);
  print("");

  HumanoidRobot jeffrey = new HumanoidRobot("Jeffrey", "walk in eternity");
  jeffrey.introduce();
  jeffrey.move();
  jeffrey.selfDestruct(0123);
  print("");

  Decepticon megatron = new Decepticon("Megatron");
  megatron.introduce();
  megatron.move();
  megatron.selfDestruct(0123);
}
