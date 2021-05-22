import "dart:io";

void main(){
  print("============================================\nCalcula la edad de tu perro en años humanos\n============================================");

  stdout.writeln("**********************************\nIngresa la edad actual de tu perro\n**********************************");
  var edadActual = stdin.readLineSync();
  int edadp= int.parse(edadActual);

  var edadH= edadp * 7 ;

  print("*+*+*+**+*+*+**+*+*+**+*+*+**+*+*+**+*+*\nLa edad del perro en años humano es: $edadH \n*+*+*+**+*+*+**+*+**+*+*+**+*+*+**+*+*+*");
  
  
}