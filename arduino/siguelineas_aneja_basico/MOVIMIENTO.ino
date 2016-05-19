/*  Funciones para el gobierno de motores
    Motor derecho en pines      D6         D9
                     AVANZA     HIGH       LOW
                     ATRAS      LOW        HIGH


    Motor izquierdo en pines    D10        D11
                     AVANZA     HIGH       LOW
                     ATRAS      LOW        HIGH

*/


void avanza()
{

  analogWrite(9, 255 - velocidad);
  digitalWrite(6, HIGH);
  analogWrite(11, 255 - velocidad);
  digitalWrite(10, HIGH);
}

void avanzaDerecha()
{
  digitalWrite(9, LOW);
  analogWrite(6, velocidad);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
}

void avanzaIzquierda()
{
  digitalWrite(11, LOW);
  analogWrite(10, velocidad);
  digitalWrite(6, HIGH);
  digitalWrite(9, HIGH);
}


