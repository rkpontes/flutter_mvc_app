import 'package:get/get.dart';
import 'package:mvc_app/app/models/click_model.dart';

class HomeController extends GetxController {
  final click = Get.put(Click(tap: 10));
}
