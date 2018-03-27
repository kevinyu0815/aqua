class Turtle extends Aquatics{
  Turtle(){
    super("turtle"); //call parent class's constructor
    xSpeed = random(0.5, 1.5) * (random(1) < 0.5 ? 1 : -1) ;
    ySpeed = random(0.5, 1.5) * (random(1) < 0.5 ? 1 : -1) ;
  }
  
  void swim(){
    super.swim();
    if (y > height - h) { ySpeed = 0 ; }
  }
  
}