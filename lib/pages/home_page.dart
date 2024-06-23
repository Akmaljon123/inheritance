import 'package:flutter/material.dart';
import 'package:inheritance/pages/detail_page.dart';
import 'package:inheritance/pages/settings_page.dart';
import 'package:provider/provider.dart';
import '../controller/main_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Consumer<MainController>(
      builder: (context, value, child)=> Scaffold(
        backgroundColor: value.color,
        appBar: AppBar(
          backgroundColor: value.color,
          title: Text(
            "Home Page",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: value.color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> const SettingsPage()
                        )
                    );
                  },
                  child: const Text("Settings Page")
              ),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> const DetailPage()
                        )
                    );
                  },
                  child: const Text("Detail Page")
              )
            ],
          ),
        ),
      ),
    );
  }
}
