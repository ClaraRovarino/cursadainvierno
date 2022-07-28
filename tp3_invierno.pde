//Clara Rovarino 88191/0
//Comision 3
//Profesor: David Bedoian 
PImage cielo, arbol, canasta,najarin;
int estado = 0;
int posX = -100;
int movnaranja = 100;
int jugadorX = 300, jugadorY = 400;
int puntaje =0;
int fallos =0;

int numnaranjas;
float[] naranjaX;
float[] naranjaY;



void setup() {
  size(600, 600);
  cielo = loadImage("cielo.jpg");
  arbol = loadImage("arbol.png");
  canasta = loadImage("canasta.png");
  najarin = loadImage("najarin.png");
}

void draw() {

  if (estado == 0) {
    pantallaInicio();
  } else if (estado == 1) {
    jugando();
  } else if (estado == 2 ) {
    background(113, 227, 103);
    text("ganaste", 200, 200);
    fill(255,100);
    rect(170,270, 350, 70);
    fill(0);
    text("reiniciar juego",150,300);
  }else if (estado == 3){
    background(232,95,80);
    fill(0);
    text("perdiste",200,200);
    fill(255,100);
    rect(170,270,350,70);
    fill(0);
    text("reiniciar juego",150,300);
  }
}
void mousePressed() {
  if ( estado==0 ) {
    estado=1;
    valoresInicialesJuego();
  } else if ( estado==1 ) {
  }
 if (estado == 2){
    estado=1;
    valoresInicialesJuego();
  } else if ( estado==1 ) {
}
if (estado == 3){
    estado=1;
    valoresInicialesJuego();
  } else if ( estado==1 ) {
  }
}
    
/*void mouseClicked(){
  if (estado == 2) {
}else if (mouseX >170 && mouseX <100+440 && mouseY>270 && mouseY <240+80){
  estado = 1; 
  }
} */
