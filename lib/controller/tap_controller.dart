import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TapController extends GetxController{
  int _x=0;
  RxInt _y=0.obs;
  RxInt _Z=0.obs;
  RxInt get Y=>_y;
  int get x=>_x;

  int get XY=>_Z.value;

  void addition(){
    print("addition call");
    _Z.value= _x+_y.value;
  }
  List<Widget> printerPY(){
    List<Widget> list=[];
    int ii=1;
    for(int i=0; i<10; i++){
      String row="";

      for(int j=0; j<i; j++){
        row=row+"  "+ii.toString();
        ii++;
      }
      list.add(Text(row));
    }
    return list;

  }

  void decrementY(){
    _y.value--;
  }
  void incrementY(){
    _y.value++;
  }

  void  increment(){
    _x++;
    update();
  }
  void decrement(){
    _x--;
    print(_x);
    update();

  }
}


class ListController extends GetxController{
  RxList _list=[].obs;

  List get mylist=>_list.value;

  void removeall(){
    _list.clear();
  }

  void addItem(var value){
    _list.add(value);
    print(_list);

  }
}