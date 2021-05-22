import "dart:io";

void main(){

  print("=========\tBienvenidos a 'Calculando el área'\t=========");
  stdout.writeln("=======\tIngresa la base del triangulo:\t======");
  var lado1= stdin.readLineSync();
  double base= double.parse(lado1);
  
  stdout.writeln("=======\tIngresa la altura del triangulo:\t=======");
  var lado2= stdin.readLineSync();
  double altura= double.parse(lado2);
  
  var area= (base * altura)/2 ;
  print("******==El área es: $area==******");
}

