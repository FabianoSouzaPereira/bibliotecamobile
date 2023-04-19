import 'package:bibliotecamobile/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppGradients {
  static const Color lightGradient = Color.fromRGBO(250, 250, 250, 0.08);

  static const linearGradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      AppColors.solidBlue,
      Color.fromARGB(255, 10, 109, 222),
      Color.fromARGB(255, 26, 115, 217),
    ],
  );
}
