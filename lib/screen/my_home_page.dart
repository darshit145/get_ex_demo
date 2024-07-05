import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/demo/demo.dart';
import 'package:getx_demo/screen/first_screen.dart';
import 'package:getx_demo/screen/second_screnn.dart';

import '../controller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController=Get.put(TapController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Get.to(Demo());
          }, icon: Icon(Icons.add))
        ],
        title: GetBuilder<TapController>(builder: (controller) =>  Text(controller.x.toString()),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  tapController.increment();
                },
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(child: Text("Tap")),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(()=>FirstScreen());
                },
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(child: Text("First Page")),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(()=>SecondScrenn());
                },
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(child: Text("ScondScreen")),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.teal[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: tapController.printerPY(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
