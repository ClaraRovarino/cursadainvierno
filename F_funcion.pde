void jugando() {
  //actualizo jugadorX:
  jugadorX +=  (mouseX-jugadorX)* 1;



  //dibujo el fondo:
  image(cielo, 0, 0, width, height);
  //el suelo:
  noStroke();
  fill(38, 198, 55);
  rect(0, 450, 700, 700);
  //el arbol:
  image(arbol, 0, -100, width, height);

  //dibujo todas las naranjas:
  for (int i = 0; i < numnaranjas; i++) {
    //por cada vuelta del for dibujo una naranja:
    noStroke();
    fill(255, 141, 54);
    ellipse(naranjaX[i], naranjaY[i], 50, 50);
  }

  //muevo todas las posiciones en Y de las naranjas:
  //y evaluo colision con el personaje:
  for (int i = 0; i < numnaranjas; i++) {
    //cambio el valor en y:
    naranjaY[i] += 9;
    if ( naranjaY[i]>height+100) {
      naranjaY[i] = -100;
      naranjaX[i] = random(50, 550);
    }

    //evaluo colision:
    //veo si sumo punto (por colision entre naranja y canasta:
    stroke(255);
              //line(naranjaX[i], naranjaY[i], jugadorX, jugadorY);
    float d = dist(naranjaX[i], naranjaY[i], jugadorX, jugadorY);
    if ( d<10 ) { //<< revisar que distancia
     //sumo punto 
     puntaje += 1;
      
    }
   
   
   
  }

  text("Puntaje: "+ puntaje, 90, 100);

  //dibujo la canasta:
  push();
  imageMode(CENTER);
  image(canasta, jugadorX, jugadorY, 150, 150);
  pop();
}

void valoreInicialesJuego() {
  //crear los arreglos de posiciones de naranjas
  numnaranjas = 5;
  naranjaX = new float[numnaranjas];
  naranjaY = new float[numnaranjas];
  for ( int i=0; i<numnaranjas; i++) {
    naranjaX[i] = random(100, 500);
    naranjaY[i] = random(-2000, -500);
  }
}
