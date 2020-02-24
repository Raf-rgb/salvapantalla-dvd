class Logo {
  PVector posicion, velocidad;
  PImage[] colores = new PImage[4];
  int i;
  
  Logo() {
    //Contador para el indice de colores
    i = 0;
    
    //Inicializando las imagenes
    colores[0] = loadImage("morado.png");
    colores[1] = loadImage("naranja.png");
    colores[2] = loadImage("verde.png");
    colores[3] = loadImage("rosa.png");
    
    //Inicializando posicion y velocidad del imagotipo
    posicion = new PVector(0,0);
    velocidad = new PVector(2,1);
  }
  
  //Metodo para mostrar el imagotipo
  void mostrar() {
    //Si el contador llega al valor maximo del indice
    //del arreglo colores, se reinicia a 0
    if(i == colores.length) {
      i = 0;
    }
    
    //Se muestra la imagen en el indice i
    image(colores[i], posicion.x, posicion.y);
  }
  
  //Metodo para mover el imagotipo
  void mover() {
    //Cambia su posicion respecto a la velocidad
    posicion.add(velocidad);
  }
  
  //Metodo para validar los rebotes
  void validarBordes() {
    
    //Si el imagotipo golpea los lados laterales
    //cambia de sentido su velocidad
    if(posicion.x < 0 || posicion.x > width - 174) {
      velocidad.x *= -1;
      //Cambia de color
      i++;
    }
    
    
    //Si el imagotipo golpea el lado inferior o superior
    //cambia el sentido de su velocidad
    if(posicion.y < 0 || posicion.y > height - 65) {
      velocidad.y *= -1;
      //Cambia de color
      i++;
    }
  }
}
