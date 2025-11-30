import 'package:auto_car/data/models/car_details_model.dart';

class CarModel {
  final int id;
  final String name;
  final String model;
  final String price;
  final String image;
  final CarDetailsModel details;
  CarModel({
    required this.id,
    required this.name,
    required this.model,
    required this.price,
    required this.image,
    required this.details,
  });
  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      id: json["id"],
      name: json["name"],
      model: json["model"],
      price: json["price"],
      image: json["image"],
      details:CarDetailsModel.fromJson( json["details"]),
    );
  }
}
