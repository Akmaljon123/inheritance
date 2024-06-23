import 'package:flutter/material.dart';
import 'package:inheritance/controller/main_controller.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(
      builder: (context, value, child)=> Scaffold(
        backgroundColor: value.color,
        appBar: AppBar(
          backgroundColor: value.color,
          title: Text(
            "Settings Page",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: value.color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: (){
                value.changeColor();
              },
              child: const Text("Change theme")
          ),
        ),
      ),
    );
  }
}
