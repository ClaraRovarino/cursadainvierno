//Clara Rovarino 88191/0
//Comision 3
//Profesor: David Bedoian 
PImage cielo, arbol, canasta;
int estado = 0;
int posX = -100;
int movnaranja = 100;
int jugadorX = 300, jugadorY = 400;
int puntaje =0;

int numnaranjas;
float[] naranjaX;
float[] naranjaY;

float x;
float y=0;
float r = 8;




void setup() {
  size(600, 600);
  cielo = loadImage("cielo.jpg");
  arbol = loadImage("arbol.png");
  canasta = loadImage("canasta.png");
}

void draw() {


  if (estado == 0) {
    pantallaInicio();
  } else if (estado == 1) {
    jugando();
  }
if (puntaje == 10){
  estado = 2;
}else if (estado == 2 ){
  background(113,227,103);
  text("ganaste",200,400);
}

}
void mousePressed() {

  if ( estado==0 ) {
    estado=1;
    valoreInicialesJuego();
  } else if ( estado==1 ) {
  }
}
