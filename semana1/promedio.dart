import "dart:io";

void main(){

  //var porcen1 = 0.20
  //var porcen2 =0.30
  //var porcen3= 0.50

  print("=========\tBienvenidos a 'Tus peores calificaciones'\t=========");
  
  stdout.writeln("=======\tIngresa la primera evaluación:\t======");
  var cal1= stdin.readLineSync();
  double calif1= double.parse(cal1);
  var parc1 = calif1 * 0.20 ;

  stdout.writeln("=======\tIngresa la segunda evaluación:\t=======");
  var cal2= stdin.readLineSync();
  double calif2= double.parse(cal2);
  var parc2 = calif2 *0.30;
  
  stdout.writeln("=======\tIngresa la tercera evaluación:\t=======");
  var cal3= stdin.readLineSync();
  double calif3= double.parse(cal3);
  var parc3 = calif3 *0.50;


  var calificacion= parc1+parc2+parc3 ;
  print("*****==La calificacion es: $calificacion==*****");
}