Logo logo;

void setup() {
  //Pantalla completa
  fullScreen();
  logo = new Logo();
}

void draw() {
  //Fondo negro
  background(0);
  logo.mostrar();
  logo.mover();
  logo.validarBordes();
}
