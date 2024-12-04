void main() {
  //Final es para no cambiar su valor
  //Podemos dejarlo en final a menos de que lo cambiemos, podemos quitar final
  //Usar final es mucho mas rapido su utilizacion en memoria por que no viene la parte de los setters, es decir no hay una manera de reestablecer un valor
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
//   final abilities = ['impostor'];
//   final abilities = <String> ['impostor'];
//   final List<String> abilities = ['impostor']
  final List<String> abilities = <String>['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  //La recomendacion es elegir una forma y usarla de la misma manera en el desarrollo de la app

  //Para imprimir multilineas usamos 3 veces las doble comillas
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
