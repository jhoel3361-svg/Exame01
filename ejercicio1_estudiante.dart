
import 'dart:io';

class Estudiante {
  String nombre;
  double sumaNotas;
  int cantidadNotas;

  Estudiante(this.nombre, this.sumaNotas, this.cantidadNotas);

  double calcularPromedio() {
    return sumaNotas / cantidadNotas;
  }

  String determinarEstado() {
    if (calcularPromedio() >= 13) {
      return "Aprobado";
    } else {
      return "Desaprobado";
    }
  }

  void mostrarReporte() {
    print("\n----- REPORTE DEL ESTUDIANTE -----");
    print("Estudiante : $nombre");
    print("Promedio   : ${calcularPromedio().toStringAsFixed(2)}");
    print("Estado     : ${determinarEstado()}");
    print("----------------------------------");
  }
}

void main() {
  int nNota = 3;
  double suma = 0;

  stdout.write("Ingrese el nombre del estudiante: ");
  String nom = stdin.readLineSync() ?? "";

  for (int i = 1; i <= nNota; i++) {
    stdout.write("Ingrese Nota $i: ");
    double nota = double.parse(stdin.readLineSync() ?? "0");
    suma += nota;
  }

  Estudiante e = Estudiante(nom, suma, nNota);
  e.mostrarReporte();
}
