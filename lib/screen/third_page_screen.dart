import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/tap_controller.dart';
import 'package:getx_demo/screen/my_home_page.dart';

class ThirdPageScreen extends StatelessWidget {
  const ThirdPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    // tapController.increment();
                    Get.to(() => MyHomePage());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xFF89dad0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                        child: Text("Value of x" + tapController.x.toString())),
                  ),
                ),
              ),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        tapController.incrementY();
                        // Get.to(()=>MyHomePage());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFF89dad0),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(
                            child: Text("value of Y :" +
                                tapController.Y.value.toString())),
                      ),
                    ),
                  )),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        tapController.addition();
                        // tapController.increment();
                        // Get.to(()=>MyHomePage());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFF89dad0),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(
                            child: Text("Sum" + tapController.XY.toString())),
                      ),
                    ),
                  )),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // tapController.addition();
                        listController.addItem(["Sum is", tapController.XY]);
                        // tapController.increment();
                        // Get.to(()=>MyHomePage());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xFF89dad0),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(
                            child: Text(
                                "Add to List" + tapController.XY.toString())),
                      ),
                    ),
                  )),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listController.mylist.length,
                  itemBuilder: (context, index) {
                    String currentValue =
                        listController.mylist[index].toString();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          tapController.decrement();
                        },
                        child: GetBuilder<TapController>(
                          builder: (controller) => Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFF89dad0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Center(
                                child: Text("Saved Value" + currentValue)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          
              TextButton(onPressed: () {
                listController.removeall();
          
              }, child: Text("Cleare List",style: TextStyle(color: Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}
