import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Demo extends StatelessWidget {
  const Demo({super.key});


  @override
  Widget build(BuildContext context) {
    AuthController authController=Get.put(AuthController());
    return Scaffold();
  }
}


class AuthController extends GetxController{
  int d=0;
  AuthController(){
    print("okkookok");
  }
  @override
  void onInit() {
    // TODO: implement onInit
    print("ONITCALL  pp");
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    print("closeddd");
    super.onClose();
  }
}