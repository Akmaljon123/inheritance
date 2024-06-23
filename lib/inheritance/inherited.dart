import 'package:flutter/material.dart';
import 'package:inheritance/controller/main_controller.dart';

class InheritedControllerNotifier extends InheritedWidget{
  final MainController mainController;
  const InheritedControllerNotifier({
    super.key,
    required super.child,
    required this.mainController
  });

  static InheritedControllerNotifier? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<InheritedControllerNotifier>();
  }

  @override
  bool updateShouldNotify(InheritedControllerNotifier oldWidget) {
    return oldWidget.mainController.color != mainController.color;
  }

}