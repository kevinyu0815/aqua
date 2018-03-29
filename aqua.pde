// background, control button
PImage bgImg ;
PImage btn[]  =  new PImage[2] ;    // 2 button: input turtle, input fish
int btnX[]    =  { 15, 80 } ;
int btnY      =  15 ;
int btnR      =  25 ;               // the radius of button

//step0. Fish fish1, fish2;  
//-> step1. use array to manage fish / turtle (object)
//-> step2. use array to manage aquatics (object)

//Fish[] fish = new Fish[10];
//Turtle[] turtle = new Turtle[10];
Aquatics[] aquatics = new Aquatics[10];
//-> "total = 10"

//int fishCounter = 0;
//int turtleCounter = 0;
int aquaCounter = 0;

void setup() {
  size(700, 525) ;

  // loading bg, control button
  bgImg = loadImage("img/bgImage.png") ;
  for (int i = 0; i < btn.length; i++ ) { 
    btn[i] = loadImage("img/btn_" + i + ".png") ;
  }
  
  // step0.
  // fish1 = new Fish();
  // fish2 = new Fish();
  
  // step1.
  //initialize -> can put in mouseClick ~
  //for(int i=0; i<fish.length; i++){
  //  fish[i] = new Fish();
  //}
  
}


void draw() {

  // show the bg, control button
  image(bgImg, 0, 0, width, height) ;
  for (int i = 0; i < btn.length; i++) { 
    image(btn[i], btnX[i], btnY, btnR*2, btnR*2) ;
  }
  
  // 
  for(int i=0; i<aquaCounter; i++){
    aquatics[i].swim();
    aquatics[i].display();
  }
  /*
  for(int i=0; i<fisnCounter; i++){
    fish[i].swim();
    fish[i].display();
  }
  */

}

void mouseClicked() {
  if(aquaCounter<10){
    // create a new turtle
    if (dist(mouseX, mouseY, btnX[0] + btnR, btnY + btnR) < btnR) {
      aquatics[aquaCounter++] = new Turtle();
      //aquaCounter++;
    }
    // create a new fish 
    else if (dist(mouseX, mouseY, btnX[1] + btnR, btnY + btnR) < btnR) {
      aquatics[aquaCounter++] = new Fish();
    }
  }
}
  
  
  /*
  // create a new turtle
  if (dist(mouseX, mouseY, btnX[0] + btnR, btnY + btnR) < btnR) {
    if(turtleCounter<10){
      turtle[turtleCounter++] = new Turtle();
      //turtleCounter++;
    }
  }
  // create a new fish 
  else if (dist(mouseX, mouseY, btnX[1] + btnR, btnY + btnR) < btnR) {
    //only put plus number, don't put swim and display here
    if(fishCounter<10){
      fish[fishCounter++] = new Fish();
      //fishCounter++;
    }
  }
}
*/
