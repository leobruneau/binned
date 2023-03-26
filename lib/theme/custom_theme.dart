import 'package:flutter/material.dart';

const Color hunterGreen = Color.fromARGB(255, 56, 102, 65);
const Color asparagus = Color.fromARGB(255, 106, 153, 78);
const Color yellowGreen = Color.fromARGB(255, 167, 201, 87);
const Color parchment = Color.fromARGB(255, 242, 232, 207);
const Color shimmer = Color.fromARGB(255, 188, 71, 73);

class CustomTheme {
  final ThemeData theme = ThemeData();
  ThemeData get lightTheme {
    return theme.copyWith(
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontSize: 30,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
      cardColor: asparagus,
      canvasColor: parchment,
      iconTheme: IconThemeData(
        color: shimmer,
        size: 30,
      ),
      colorScheme: theme.colorScheme.copyWith(
        primary: asparagus,
        secondary: yellowGreen,
        tertiary: shimmer,
        shadow: hunterGreen,
        background: parchment,
      ),
    );
  }
}
