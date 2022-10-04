import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:flutter/material.dart';
import'package:bmi_calculator/screens/Input_page.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
    theme:ThemeData.dark().copyWith(

      appBarTheme: const AppBarTheme(
          backgroundColor:Color(0xFF0A0C21),
      ),
      scaffoldBackgroundColor:const Color(0xFF0A0C21),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.purple,
      ),
    ),
      home:InputPage()

    );
  }
}
