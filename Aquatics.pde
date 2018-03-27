class Aquatics {
  //properties
  PImage img;
  float w, h, x, y, xSpeed, ySpeed;
  
  //constructor(generate/ initialize fish)
  
  Aquatics(String filename) {
    img = loadImage("img/" + filename + ".png") ;
    float ratio = random(0.5, 0.7) ;
    w = img.width * ratio ;
    h = img.height * ratio ;
    x = random(width - w) ;
    y = 0 ;
    //xSpeed = random(1, 2) * (random(1) < 0.5 ? 1 : -1) ;  
    //ySpeed = random(1, 2) * (random(1) < 0.5 ? 1 : -1) ;
    
    
  }
  
  //method1
  void swim () {
    x += xSpeed ;
    y += ySpeed ;
    
    if (x < 0 || x > width - w) { 
      xSpeed *= -1 ;
    }
    if (y < 0 || y > height - h) {
      ySpeed *= -1 ;
    }    
  } 
  
  //method2
  void display () {
    int direction = (xSpeed > 0) ? RIGHT : LEFT;
  
    pushMatrix();
    translate(x, y);
    if (direction == RIGHT) {
      scale(1, 1);
      image(img, 0, 0, w, h); 
    } else {
      scale(-1, 1);
      image(img, -w, 0, w, h); 
    }
    popMatrix();
  }
}