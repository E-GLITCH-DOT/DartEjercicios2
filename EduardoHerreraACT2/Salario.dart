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
  int sueldo;
  int horasPlus;
  int compensacionExtra;
  int actasAdministrativas;
  int horasTrabajadas;

  actasAdministrativas = 0;

  String parar;
  parar = "Y";

  while (actasAdministrativas < 2 && parar.toUpperCase() == "Y") {
    print("¿Horas trabajadas en esta semana?");
    horasTrabajadas = int.parse(stdin.readLineSync()!);

    while (horasTrabajadas <= 0) {
      print("Valor nulo, por favor  Intente de nuevo");
      print("");
      print("¿Horas trabajadas en esta semana?");
      horasTrabajadas = int.parse(stdin.readLineSync()!);
    }

    if (horasTrabajadas < 27) {
      actasAdministrativas = actasAdministrativas + 1;
      sueldo = horasTrabajadas * 120;
      print("Minimo de horas 27 "
          "Se tendra que generar un Acta , "
          "Acumular 2 Actas, Ocasionara Baja inmediata");
      print("");
      print("Salario por horas trabajadas: $sueldo");
    } else if (horasTrabajadas <= 40) {
      sueldo = horasTrabajadas * 120;
      print(
          "Horas trabajadas $horasTrabajadas, Total a pagar : $sueldo pesos mexicanos  ");
      print("");
    } else {
      horasPlus = horasTrabajadas - 40;
      compensacionExtra = horasPlus * 175;
      sueldo = horasTrabajadas * 120;
      print(
          "Horas trabajadas $horasTrabajadas, Horas Extras: $horasPlus , Total: ${sueldo + compensacionExtra} pesos");
      print("");
    }
    if (actasAdministrativas < 2) {
      print("¿usurio quiere calcular uno nuevo?");
      print("( Y / N)");
      parar = stdin.readLineSync()!;
    } else {
      print("Actas administrativas acumuladas: $actasAdministrativas ");
      print("Acumular 2 Actas ,Ocasionara Baja inmediata");
    }
  }
}
