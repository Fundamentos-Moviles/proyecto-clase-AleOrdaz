import 'dart:math';

import 'package:flutter/material.dart';
import 'package:miprimeraapp8/constantes.dart' as con;
import 'package:miprimeraapp8/singleton.dart';

class Listas extends StatefulWidget {
  const Listas({super.key});

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  Singleton singleton = Singleton();
  Random random = Random();

  //Acciones que se realizan antes de cargar toda nuestra vista
  @override
  void initState() {
    singleton.name = "";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleton.name),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width, //100%
            height: MediaQuery.of(context).size.height * 0.45, //45%
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                //[] -> agregamos una función como hijo unico
                children: List.generate(10, (index){
                  var num = random.nextInt(100);
                  // '$num' -> num.toString()
                  return buildContainer1('nombre con apellidos', num.toString());


                }),
              ),
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width, //100%
            height: MediaQuery.of(context).size.height * 0.45, //45%
            child: ListView.builder(
              itemCount: con.nombres.length,
                itemBuilder: (BuildContext context, int index) {
                  var lista = con.nombres; // Lista de #  valores
                  //print(lista);
                  // accedemos al index valor y lo separamos por el caracter
                  var datos = lista[index].toString().split('#');
                  print(datos[0]);
                  /// datos[0] -> ID
                  /// datos[1] -> NOMBRE
                  /// datos[3] -> AP materno
                  return NewWidget1(
                      name: '${datos[1]} ${datos[2]} ${datos[3]}',
                      num: datos[4]
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

  ///Funciones son para actualizar el estado de la vista
  Container buildContainer1(String name, String num) {
    return Container(
          color: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Text(name),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(num),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Text('Descripcion'),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(name), /// nombre y apellidos
                            content: Text('¿Desea eliminar este usuario?'), ///seguro eliminar
                            actions: [ ///dos botones eliminar y cancelar
                              TextButton(
                                onPressed: (){
                                  setState(() {

                                  });
                                },
                                child: Text('Aceptar'),
                              ),
                              TextButton(
                                onPressed: (){
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text('Cancelar'),
                              )
                            ],
                          )
                        );
                      },
                      icon: Icon(Icons.delete),
                    ),
                  )
                ],
              )
            ],
          ),
        );
  }
}

///Clase sin actualización de estado
class NewWidget1 extends StatelessWidget {
  const NewWidget1({
    super.key, required this.name, required this.num,
  });

  final String name;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(name),
              ),
              Expanded(
                flex: 4,
                child: Text(num),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Text('Descripcion'),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.edit),
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.delete),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
