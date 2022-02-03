/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2:
    Alumno: Eduardo Emanuel Herrera Pech
    Cuatrimestre: 4.A
    Parcial: 2
*/
import 'dart:io';

void main() {
//Declaramos variables
  String palabras;
  String espacio;
  String i;
  int verificador;

  print("Escriba una frase: ");
  palabras = stdin.readLineSync()!;
  verificador = palabras.split(' ').length;
  espacio = palabras.trim().replaceAll(" ", "");
  i = espacio.toLowerCase();

  String reversa = i.split('').reversed.join('');

  if (i == reversa) {
    print('Es un Palíndromo');
  } else {
    print('No es  Palíndromo');
  }

  print('Número de Palabras: $verificador');
}
