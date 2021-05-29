import "dart:io";
List guardar = [];
void main(){
  var repetir="si";
  while (repetir=="si"){
    stdout.writeln("**********************************\n\t\t\t\tMenú\n**********************************\n1:Mostrar todos los datos.\n2:Insertar un nuevo registro.\n3:Modificar un registro.\n4:Borrar un registro.\nElige una opcion con numeros:");
    var opcion = stdin.readLineSync();
    if (opcion =="1"){
      mostrar();
    }
    if (opcion =="2"){
      insertar();
    }
    if (opcion =="3"){
      modificar();
    }
    if (opcion =="4"){
      eliminar();
    }
    stdout.writeln("¿Deseá regresar al menú?");
    repetir = stdin.readLineSync();
  }
}


void insertar(){
  stdout.writeln("**********************************\n¿Cuantas personas deseá ingresar?\n**********************************");
  var veces = stdin.readLineSync();
  int veces1 = int.parse(veces);
  int cont = 0;
  for (var i = 0; i < veces1; i++){
    cont=cont+1;
    stdout.writeln("**********************************\nIngresa el nombre de la persona $cont \n**********************************");
    var nombre = stdin.readLineSync();
    stdout.writeln("**********************************\nIngresa el numero telefonico \n**********************************");
    var telefono = stdin.readLineSync();
    stdout.writeln("**********************************\nIngresa el email de la persona \n**********************************");
    var email= stdin.readLineSync();
    //2 formas de crear un Mapa
    /*var agenda = Map();
    agenda ['Nombre'] = nombre;
    agenda ['Telefono'] = telefono;
    agenda ['Email'] = email;
    print("Los datos de han guardado");*/
    Map <dynamic, dynamic> agenda = {
      'Nombre' : nombre,
      'Telefono' : telefono,
      'Email' : email
    };
    //print(agenda);
    guardar.add(agenda);
  }

}

void mostrar(){
  print(guardar);
}

void modificar(){
  mostrar();
  stdout.writeln("**********************************\nIngresa el nombre de la persona a modificar\n**********************************");
  var cambio = stdin.readLineSync(); 
  for(int i=0; i < guardar.length; i++){
      var modificacion = new Map();
      modificacion = guardar[i];

    if (cambio ==modificacion['Nombre']){
      stdout.writeln("Ingresa el nombre de la persona");
      var NombreCam = stdin.readLineSync();
      stdout.writeln("Ingresa el telefono de la persona");
      var TelefonoCam = stdin.readLineSync();
      stdout.writeln("Ingresa el email de la persona");
      var EmailCam = stdin.readLineSync();
      modificacion["Nombre"]=NombreCam;
      modificacion["Telefono"]=TelefonoCam;
      modificacion["Email"]=EmailCam;
      guardar[i]=modificacion;
      print("¡¡¡¡¡El nombre de la persona $cambio se ha actualizado a:!!!1");
      print(guardar);
    }

  }
}

void eliminar(){
  mostrar();
  print("****************************************\nIngresa el nombre de la persona a ser eliminada\n****************************************");
  var nombre_p = stdin.readLineSync();

  for (int i=0; i < guardar.length; i++){
    var eliminacion = new Map();
    eliminacion = guardar[i];

    if (nombre_p == eliminacion['Nombre']){
    guardar.removeAt(i);
    print("*=*=El contacto de la persona $nombre_p se ha eliminado*=*=");
    print (guardar);
    }
    
  } 

}