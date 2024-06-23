import 'package:flutter/material.dart';
import 'package:inheritance/controller/main_controller.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(
      builder: (context, value, child)=> Scaffold(
        backgroundColor: value.color,
        appBar: AppBar(
          backgroundColor: value.color,
          title: Text(
            "Detail Page",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: value.color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              "This is a test widget, which will be used to test the works done by other",
              style: TextStyle(
                color: value.color == Colors.white ? Colors.black : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
