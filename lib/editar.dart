import 'package:flutter/material.dart';
import 'package:miprimeraapp8/singleton.dart';

class Editar extends StatefulWidget {
  const Editar({super.key});

  @override
  State<Editar> createState() => _EditarState();
}

class _EditarState extends State<Editar> {
  Singleton singleton = Singleton();
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  final d = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           TextFormField(
             controller: a,
           ),
           TextFormField(
             controller: b,
           ),
           TextFormField(
             controller: c,
             initialValue: singleton.nuevaLista[0].split("#")[1],
           ),
           TextFormField(
             controller: d,
           ),
           TextButton(onPressed: (){
             setState(() {
               String nuevoRegistro = ''
                   '${singleton.id_editar}#${a.text}#${b.text}#${c.text}#1#${d.text}';

               singleton.nuevaLista[singleton.id_editar] = nuevoRegistro;

             });
           }, child: Text('Guardar'))
         ],
      ),
    );
  }
}
