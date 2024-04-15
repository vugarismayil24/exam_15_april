import 'vehicle_model.dart';

class TruckModel implements VehicleModel {
  @override
  int id;

  @override
  String name;

  @override
  double price;
  TruckModel({
    required this.id,
    required this.name,
    required this.price,
    required this.lists
  });
  
  @override
  List lists;

}
