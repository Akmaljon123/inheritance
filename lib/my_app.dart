import 'package:flutter/material.dart';
import 'package:inheritance/controller/main_controller.dart';
import 'package:inheritance/inheritance/inherited.dart';
import 'package:inheritance/pages/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

MainController mainController = MainController();

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return InheritedControllerNotifier(
      mainController: mainController,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
