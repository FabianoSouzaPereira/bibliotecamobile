import 'dart:async';

import 'package:bibliotecamobile/core/resources/app_images.dart';
import 'package:bibliotecamobile/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
    return Container(
      child: Image.asset(AppImages.splashImage, key: key, fit: BoxFit.cover),
    );
  }
}
