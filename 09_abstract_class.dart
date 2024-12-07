//Clases Abstractas
//Sirve como un molde que nos va a permitir crear otros moldes
//No se puede instanciar una clase abstracta
void main(){
  print('');
  
}
//Enum no lleva ; al final
enum PlantType { nuclear, wind, water}

abstract class EnergyPlant{
  double energyLeft;
  PlantType type; //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
    });
  
  void consumeEnergy(double amount);
  
}