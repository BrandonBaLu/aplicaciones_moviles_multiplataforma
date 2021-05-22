import "dart:io";

void main(){

  var pokemon=30;
  print("------------------------------\n¿Cuantos pokemon caben?\n------------------------------");

  stdout.writeln("----------------------------------------\nIngresa el tamaño de la base del rectangulo:\n----------------------------------------");
  var b = stdin.readLineSync();
  double base= double.parse(b);

  stdout.writeln("----------------------------------------\nIngresa el tamaño de la altura del rectangulo:\n----------------------------------------");
  var h = stdin.readLineSync();
  double altura = double.parse(h);

  var caben = (base*altura)/pokemon;

  print("------------------------------\nCaben $caben pokemones\n------------------------------");

}