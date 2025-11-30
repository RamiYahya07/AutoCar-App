import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/car_model.dart';

class CarService {
  static Future<List<CarModel>> getCars() async {
    final String response =
        await rootBundle.loadString("assets/json/cars.json");
    List data = jsonDecode(response);
    return data.map((e) => CarModel.fromJson(e)).toList();
  }
}
