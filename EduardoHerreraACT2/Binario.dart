/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2:
    Alumno: Eduardo Emanuel Herrera Pech
    Cuatrimestre: 4.A
    Parcial: 2
*/
import "dart:io";

void main() {
//OPCIONES Y Variables//
  String opcion = "Y";

  while (opcion != "N") {
    stdout
        .writeln("\n Proporcione el numero decial y lo convertire en binario");
    int decimal = int.parse(stdin.readLineSync().toString());
    int binario = 0, i;

    for (i = 1; decimal > 0; i *= 10) {
      binario += (decimal % 2) * i;
      decimal = (decimal / 2).floor();
    }
    stdout.writeln("\nEl numero $decimal en binario conertido es : $binario");
    stdout.writeln("\n¿Quieres convertir otro numero? (Y/N)");
    opcion = stdin.readLineSync().toString();
  }
}
