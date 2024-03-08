
import 'package:get/get.dart';
import 'package:test2/model/myData.dart';

class carDetailsController extends GetxController {
  late int index;
  @override
  void onInit() {
    super.onInit();
    index = Get.arguments;
  }

  data d = data();
  String GetModel() {
    return "${d.dat[index].Model}";
  }

  String GetLaunchYear() {
    return "${d.dat[index].lanchYear}";
  }

  String GetCompany() {
    return "${d.dat[index].Company}";
  }

  String GetPrice() {
    return "${d.dat[index].Price}";
  }

  String Getcd() {
    return "${d.dat[index].CD}";
  }

  String GetCarEngine() {
    return "${d.dat[index].CarEngine}";
  }

  String GetHorsepower() {
    return "${d.dat[index].Horsepower}";
  }

  String GetBattery() {
    return "${d.dat[index].Battery}";
  }

  List<dynamic> GetImg() {
    return d.dat[index].img;
  }
}
