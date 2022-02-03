/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2
    Alumno: Eduardo Emanuel Herrera Pech
    Cuatrimestre: 4.A
    Parcial: 2
*/

void main() {
  //Esto va a funcionar como un calculadora de masa corporal
  double pesoEnKg = 67.4;
  double estatura = 165;
  double masacorporal;

  print("Procederemos  a calcular un IMC");
  print("Tu peso en KG:");
  print(pesoEnKg);
  print("Tu Estatura es:");
  print(estatura);
  print("Tu IMC es:");

  //operacion
  masacorporal = (pesoEnKg / (estatura * estatura / 10000));
  print(masacorporal);

  //Condiciones
  if (masacorporal < 18.5) {
    print(" Indice de masa corporal es inferior al normal");
  } else if (masacorporal < 24.9) {
    print("Indice de masa corporal es normal");
  } else if (masacorporal < 29.9) {
    print("Indice de masa corporal es superior al normal");
  } else if (masacorporal > 30) {
    print("Usuario presenta la condicion de Obesidad");
  }
}
