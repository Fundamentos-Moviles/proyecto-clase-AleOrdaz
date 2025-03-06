import 'package:flutter/material.dart';
import 'package:miprimeraapp8/constantes.dart' as con;
import 'package:miprimeraapp8/listas.dart';
import 'package:miprimeraapp8/principal.dart';
import 'package:miprimeraapp8/singleton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Singleton singleton = Singleton(); //accedemos a nuestra clase

  bool verTexto = false;

  //Variables para obtener el valor de los textformfield
  final user = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Siempre estará actulizado el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          width: size.width * 0.8, //80%  = size.width  / 8
          child: SingleChildScrollView(
            padding: EdgeInsets.all(size.width * 0.1), //Espaciado al hijo
            child: Column(
              mainAxisSize: MainAxisSize.min, //El tam total de sus hijos
              mainAxisAlignment: MainAxisAlignment.center, //centra verticalmente
              children: [
                Text('Usario:'),
                TextFormField(
                  controller: user,
                  obscureText: verTexto,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: verTexto ?
                      Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      onPressed: (){
                        setState(() {
                          verTexto = !verTexto;
                        });
                      },
                    ),
                    //labelText: 'Escribe tu usuario',
                    hintText: 'Escribe tu usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),//border redondeados
                      //CRear recuadro
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.solid
                      )
                    ),
                    filled: true,
                    fillColor: Colors.blue,
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
                Text('Contraseña:'),
                TextFormField(
                  controller: pass, //Obtiene el valor y lo guarda en la variable
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: con.color2,
                    fixedSize: Size(size.width * 0.75, 40)
                  ),
                  onPressed: (){
                    setState(() {
                      print('Usario: ${user.text}');
                      print('Contraseña: ${pass.text}');

                      if(con.user != user.text &&
                          con.pass != pass.text) {
                        singleton.name = con.name; //guardo un valor en cache
                        //Si es correcto el usuario mandamos a la vista principal
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder:
                                (context) => const Listas()));
                      } else {
                        //Si no es correcto mostramos un mensaje

                      }
                    });
                  },
                  child: Text(
                    'Inciar Sesión',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
