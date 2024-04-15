import 'vehicle_model.dart';

class BusModel implements VehicleModel {
  @override
  int id;

  @override
  String name;

  @override
  double price;
  BusModel({
    required this.id,
    required this.name,
    required this.price,
    required this.lists
  });
  
  @override
  List lists;
 

}
