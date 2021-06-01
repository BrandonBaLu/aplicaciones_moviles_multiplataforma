import "dart:io";

List lista = [];

void main(){
  final objeto = new Sensores();
  print("********************************************+\n\t\tBienvenido a sensores y algo mas\n********************************************+");
  var rep="si";
  while (rep=="si" || rep=="Si"){
    print("Ingresa el número de registros a almacenar: ");
    dynamic veces = stdin.readLineSync();
    int veces1 = int.parse(veces);
    for(var i = 0; i < veces1; i++){ 
      objeto.leer();
    }
    
    print("¿Desea ver los registros?\n'Si/No'");
    var repetir = stdin.readLineSync();
    if (repetir=="si"){// || repetir=="Si");{
      objeto.imprimir();
    }
    print("¿Desea regresar al principio?");
    rep=stdin.readLineSync();

  }
}


class Sensores{
  void sensor(){

  }

  void leer(){
    print("Inserta el id del sensor");
    dynamic id = stdin.readLineSync();
    
    print("Inserta el valor del sensor");
    dynamic valor =stdin.readLineSync();

    print("Ingresa la fecha en formato 'dd-MM-yyy'");
    dynamic fecha =stdin.readLineSync();

    var sensor = Map();
    sensor ['ID'] = id;
    sensor ['Valor'] = valor;
    sensor ['Fecha'] = fecha;
    lista.add(sensor);
  }
  
  void imprimir(){
    print(lista);
  }

}

