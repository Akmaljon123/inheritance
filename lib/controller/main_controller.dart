import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inheritance/service/shared_service.dart';

class MainController extends ChangeNotifier {
  MainController._internal();
  static final MainController _instance = MainController._internal();
  factory MainController() {
    return _instance;
  }

  Color color = Colors.white;

  void changeColor() {
    log(color.toString());
    if (color == Colors.white) {
      color = Colors.black;
      SharedService.saveData("black");
    } else {
      color = Colors.white;
      SharedService.saveData("white");
    }
    notifyListeners();
  }

  Future<void> setColor() async {
    String? color1 = await SharedService.getData();
    color1 ??= "white";
    color = color1 == "white" ? Colors.white : Colors.black;
    notifyListeners();
  }
}
