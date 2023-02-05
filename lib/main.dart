import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0F3D3E),
        ),
        primaryColor: const Color(0xFFE2DCC8),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFF1F1F1),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF100F0F),
      ),
      home: InputPage(),
    );
  }
}


