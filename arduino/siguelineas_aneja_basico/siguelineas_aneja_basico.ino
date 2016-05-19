/*      Programa de ejemplo de siguelineas del lalebot "barrou 1.0"


*/



int velocidad = 255;  // velocidad a la que se moverá el robot, con 255 es velocidad máxima.

int error = 0;  // variable donde se almacenará el valor que nos devolverá el sensor de línea.

/*
   Cuando el error es positivo la linea está a la derecha... y viceversa ofcourse
*/


int sensorDer;  //variable para almacenar el valor leído por el sensor que va a la derecha de la línea
int sensorIzq;  //variable para almacenar el valor leído por el sensor que va a la izquierda de la línea



void setup() {
  //configura los cuatro pines de los motores como salidas
  pinMode(10 , OUTPUT);
  pinMode(11 , OUTPUT);
  pinMode(6 , OUTPUT);
  pinMode(9 , OUTPUT);
}

void loop() {
  sensorDer = analogRead(A1); //almacena el valor del pin A1 que es donde está el sensor de la derecha en la variable sensorDer
  sensorIzq = analogRead(A2); //almacena el valor del pin A2 que es donde está el sensor de la izquierda en la variable sensorIzq
  if (sensorDer + sensorIzq > 400)    // solo almacena el nuevo error si uno de los dos sensores está sobre la línea
                                       // si los dos están sobre el blanco se mantiene el error
  {
    error = sensorDer - sensorIzq;      
  }

  if (error > 50)
  {
    avanzaIzquierda();
  }
  else if (error < -50)
    avanzaDerecha();
  else
  {
    avanza();
    delay(10);
  }
}
