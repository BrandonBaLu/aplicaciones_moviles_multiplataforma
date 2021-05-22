import "dart:io";

void main(){
  print("=========\tBienvenidos a 'Calculando el perimetro'\t=========");
  stdout.writeln("=======\tIngresa el valor del lado 1:\t======");
  var lado1= stdin.readLineSync();
  double lado_1= double.parse(lado1);

  stdout.writeln("=======\tIngresa el valor del lado 2:\t=======");
  var lado2= stdin.readLineSync();
  double lado_2= double.parse(lado2);
  
  stdout.writeln("=======\tIngresa el valor del lado 3:\t=======");
  var lado3= stdin.readLineSync();
  double lado_3= double.parse(lado3);

  stdout.writeln("=======\tIngresa el valor del lado 4:\t=======");
  var lado4= stdin.readLineSync();
  double lado_4= double.parse(lado4);

  stdout.writeln("=======\tIngresa el valor del lado 5:\t=======");
  var lado5= stdin.readLineSync();
  double lado_5= double.parse(lado5);

  stdout.writeln("=======\tIngresa el valor del lado 6:\t=======");
  var lado6= stdin.readLineSync();
  double lado_6= double.parse(lado6);

  var perimetro= (lado_1 + lado_2 + lado_3+ lado_4+ lado_5 + lado_6) ;
  print("*****==El perimetro del exágono es: $perimetro==*****");
}