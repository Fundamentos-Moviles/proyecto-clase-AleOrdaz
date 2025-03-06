///Es una clase de BD local qeu se almacena en chache
///Acceso global desde cualquier vista a la información almacenada
class Singleton {
  //Intansear variable global
  static Singleton? _instance; //? > Variable puede o no ser null

  //Obtenemos la instancia que esta guardada en cache
  Singleton._internal() {
    _instance = this;
  }

  //Verifiecar si singleton es = null, si así se crea una nueva instancia
  //y si no devuelve la instancia de cache
  factory Singleton() => _instance ?? Singleton._internal();

  //Siempre inicializar las variables a un valor fijo
  String name = '';
}