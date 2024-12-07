//Clases Abstractas
//Sirve como un molde que nos va a permitir crear otros moldes
//No se puede instanciar una clase abstracta
void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  print('wind ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

//Enum no lleva ; al final
enum PlantType { nuclear, wind, water }

//La clase abstracta sirve para cuando queremos crear un tipo de estructura en la que podemos recibir muchos tipos de plantas de energia y reutilizar los metodos
abstract class EnergyPlant {
  double energyLeft;
  PlantType type; //nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//Extends es heredar o implements
class WindPlant extends EnergyPlant {
  //El objetivo de extenderla de una clase abstracta es que ahora voy a heredar constructores, metodos y todo
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  //Debe cumplir con la misma firma y lo que debe llamarse igual es el valor de retorno, el nombre del metodo y los argumentos
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
