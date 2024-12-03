import 'package:get/get.dart';

class example3Controller extends GetxController{
  RxBool notificaiton = false.obs;

  setNotification(bool value){
    notificaiton.value = value;
  }
}