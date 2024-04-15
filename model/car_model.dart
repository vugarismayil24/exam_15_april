import 'vehicle_model.dart';

class CarModel implements VehicleModel {
  @override
  int id;

  @override
  String name;

  @override
  double price;
  CarModel({
    required this.id,
    required this.name,
    required this.price,
    required this.lists
  });
  
  @override
  List lists;

}
