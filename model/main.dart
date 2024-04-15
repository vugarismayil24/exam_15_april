import 'dart:io';
import 'bus_model.dart';
import 'car_model.dart';
import 'truck_model.dart';

void main() {
  print("Daxil olmaq üçün seçim edin");
  print("[1] User girişi");
  print("[2] Admin girişi");
  String? input = stdin.readLineSync().toString();
  userInput(input);
  CarModel car = CarModel(id: 1, name: "BMW", price: 3000.90, lists: [0]);
  BusModel bus = BusModel(id: 2, name: "Merc", price: 23000, lists: [1]);
  TruckModel truck = TruckModel(id: 3, name: "Volvo", price: 28000, lists: [2]);

}



  

userInput(input) {
  switch (input) {
    case "1":
      {
        userLogin();
        //Masinlar siyahisi
      }
    case "2":
      {
        adminLogin();
        //gorme, elave etme, silme, deyisdirme
      }

    default:
      print("Seçim yalnışdır təkrar seçim edin:");
      userInput(input);
  }
}
//Userin melumatlarini yoxla
userLogin() {
  String username = "user1";
  String userpass = "12345";
  print("Username daxil edin:");
  String? userinput = stdin.readLineSync().toString();
  while (true) {
    if (userinput != username) {
      print("Username Düzgün deyil\ntəkrar daxil edin");
      String? userinput = stdin.readLineSync().toString();
    } else {
      print("Şifrəni daxil edin:");
      String? userinput = stdin.readLineSync().toString();
      if (userinput != userpass) {
        print("Şifrə Düzgün deyil\ntəkrar daxil edin");
        String? userinput = stdin.readLineSync().toString();
      } else {
        print("Xoş Gəldiniz $username");
      }
    }
    break;
  }
}
//Admin melumatlarini yoxla
adminLogin() {
  String adminUserName = "admin1";
  String adminUserpass = "admin12345";
  print("Username daxil edin:");
  String? userinput = stdin.readLineSync().toString();
  while (true) {
    if (userinput != adminUserName) {
      print("Username Düzgün deyil\ntəkrar daxil edin");
      String? userinput = stdin.readLineSync().toString();
    } else {
      print("Şifrəni daxil edin:");
      String? userinput = stdin.readLineSync().toString();
      if (userinput != adminUserpass) {
        print("Şifrə Düzgün deyil\ntəkrar daxil edin");
        String? userinput = stdin.readLineSync().toString();
      } else {
        print("Xoş Gəldiniz $adminUserName");
      }
    }
    break;
  }
}
