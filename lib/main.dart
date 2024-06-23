import 'package:flutter/material.dart';
import 'package:inheritance/controller/main_controller.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await mainController.setColor();
  runApp(
      ChangeNotifierProvider(
        create: (context)=>MainController(),
        child: const MyApp(),
      )
  );
}
