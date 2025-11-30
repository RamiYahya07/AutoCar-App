class CarDetailsModel {
  final String engine;
  final String horsePower;
  final String fuelType;
  final String transmission;
  final String description;

  CarDetailsModel({
    required this.engine,
    required this.horsePower,
    required this.fuelType,
    required this.transmission,
    required this.description,
  });

  factory CarDetailsModel.fromJson(Map<String, dynamic> jsonData) {
    return CarDetailsModel(
      engine: jsonData["engine"],
      horsePower: jsonData["horsepower"],
      fuelType: jsonData["fuelType"],
      transmission: jsonData["transmission"],
      description: jsonData["description"],
    );
  }
}
