import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_demo/screen/third_page_screen.dart';

import '../controller/tap_controller.dart';
class SecondScrenn extends StatelessWidget {
  const SecondScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(()=>ThirdPageScreen());
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.snackbar("This is Get Snackbar", "Good Morning",isDismissible: true,snackPosition: SnackPosition.BOTTOM,mainButton: TextButton(onPressed: () {

                  }, child: Text("Exit")));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.defaultDialog(

                    title: "koko",
                    content: Text("data")

                  );
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
      ),
    );
  }
}
