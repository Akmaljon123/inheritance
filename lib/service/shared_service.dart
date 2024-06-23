import 'package:shared_preferences/shared_preferences.dart';

class SharedService{

  static Future<void> saveData(String color)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setString("theme", color);
  }

  static Future<String?> getData()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? result = sharedPreferences.getString("theme");

    return result;
  }

}