import 'package:flutter/material.dart';

//StatefulWidget: Clase con cambios de estado
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  // Crear sus variables
  bool c1 = false;

   // Fin del espacio para las variables
  @override
  Widget build(BuildContext context) {
    //Scaffold: Dimenciones actuales de nuestra vista
    return Scaffold(
      appBar: AppBar(), //Barra superior
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                ///Le da acción de un btn a cualquier widget
                child: InkWell(
                  onTap: () {
                    setState(() { // Actualizar el estado de la vista
                      //(){} -> función interna
                      //Realizar la acción de cambio de color al contenedor hijo
                      c1 = !c1;
                      //c1 = c1 ? false : true;
                    });
                  },
                  child: Container(
                    //Atributos
                    width: MediaQuery.of(context).size.width / 3, /// 100%
                    /// MediaQuery.of(context).size.width / 2 -> 50%
                    height: 100,
                    color: c1 ? Colors.red : Colors.yellow,
                    child: Text(
                      'Color Rojo',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.blueGrey,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  //Atributos
                  width: MediaQuery.of(context).size.width / 3, /// 100%
                  /// MediaQuery.of(context).size.width / 2 -> 50%
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      )

      /*Stack( //Sobreponer varios widgets entre si
        children: [

        ],
      ),*/ //Cuerpo de la app
    );
  }
}
