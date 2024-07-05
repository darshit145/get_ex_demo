import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/controller/tap_controller.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController=Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },icon: Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                tapController.decrement();
              },
              child: GetBuilder<TapController>(
                builder: (controller) =>
                 Container(
                  width: double.infinity,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(child: Text("Tap ${controller.x}")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
