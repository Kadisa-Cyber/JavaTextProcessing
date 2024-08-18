PImage foto1;
PImage foto12;
PImage foto13;

PImage foto2;
PImage foto21;
PImage foto22;
PImage foto23;

PImage foto3;
PImage foto32;
PImage foto33;

PFont font1;

float gojo = 800;
int poder = 600;
float fundo = 800;

int LHand = 400;
int RHand = 600;

int img1 = 230;
int tempo = 0;

int sizeW=500;

void setup(){
  size(600,600);
  background(0);
  foto1 = loadImage("foto1.png");
  foto12 = loadImage("foto12.png");
  foto13 = loadImage("foto13.png");
 
  foto2 = loadImage("foto2.png");
  foto21 = loadImage("foto21.png");
  foto22 = loadImage("foto22.png");
  foto23 = loadImage("foto23.png");
  
   foto3 = loadImage("foto3.png");
  foto32 = loadImage("foto32.png");
  foto33 = loadImage("foto33.png");
  
  font1 = loadFont("SourceCodePro-Semibold-48.vlw");
  
  imageMode(CENTER);

}

void draw(){  
  if (tempo<90){
  image(foto13,300,300);
  image(foto1,300,300);
  image(foto12,img1,300);
  tempo = tempo + 1;
  img1 = img1 + 1;
  }else if (tempo<220){
  image(foto2,300,300);
  image(foto21,300,300);
  image(foto23,300,400,RHand,RHand);
  image(foto22,300,300,LHand,LHand);
  tempo = tempo + 1;
  LHand= LHand +1;
  RHand = RHand - 1;
  }else  if(tempo<450){
  imageMode(CENTER);
  image(foto3,300,300,fundo,fundo);
  image(foto32,300,400,gojo,gojo);
  image(foto33,280,320,sizeW,sizeW);
  fill(254,254,254);
  textFont(font1,24);
  textSize(25);
  text("Murasaki",width/2+150,height/2-50);
   text("no",width/2+180,height/2);
    text("koku",width/2+169,height/2+50);
    gojo=gojo-0.8;
    tempo=tempo+1;
    sizeW= sizeW+4;
  fundo = fundo + 0.5; 
  }else{
   tempo=0; 
   gojo = 800;
poder = 600;
fundo = 800;
LHand = 400;
RHand = 600;
img1 = 220;
sizeW=500;
  }
  

  
}
