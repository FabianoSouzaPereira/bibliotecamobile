import 'package:bibliotecamobile/core/resources/app_gradients.dart';
import 'package:bibliotecamobile/features/login/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: AppGradients.linearGradientBackground,
          ),
        ),
        Scaffold(
          body: SingleChildScrollView(
            reverse: true,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(55.0),
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                  child: Column(
                    children: [Text('Login'), TextFieldWidget()],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
