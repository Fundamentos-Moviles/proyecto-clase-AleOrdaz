//Crear las varibles que se usan en todas las vistas y
//su valor siempre va ser el mismo

import 'package:flutter/material.dart';

const String user = "alejandro";
const String pass = "123+";

const String name = 'Oscar Alejandro Ordaz';

const color1 = Colors.black;
const color2 = Color(0xFF1D3FAD);

//ID # NOMBRE # APELLIDO PAT # AP MATERNO # NUMERO # BANDERA
const List nombres = [
  '1#Nombre1#Apellido1#Apellido2#1#1',
  '2#Nombre1#Apellido1#Apellido2#1#1',
  '3#Nombre1#Apellido1#Apellido2#1#1',
  '4#Nombre1#Apellido1#Apellido2#1#1',
];

List dameLista() {
  List name = [];
  for(int i=0; i < 10; i++){
    name.add('$i#Nombre$i#Apellido$i#Apellido2#$i#1');
  }
  return name;
}
