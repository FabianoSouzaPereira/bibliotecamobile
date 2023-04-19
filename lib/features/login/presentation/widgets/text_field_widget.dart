import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Color? fillColor;
  final String? label;
  final Function()? toggle;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool? showSuffixIcon;
  final String? initialValue;
  final bool? enabled;

  const TextFieldWidget({
    super.key,
    this.initialValue,
    this.maxLength,
    this.keyboardType,
    this.obscureText,
    this.prefixIcon,
    this.fillColor,
    this.label,
    this.toggle,
    this.controller,
    this.onChanged,
    this.showSuffixIcon,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            onChanged: (value) => value,
            keyboardType: keyboardType ?? TextInputType.text,
            maxLength: 90,
            decoration: InputDecoration(
              fillColor: fillColor ?? Colors.grey[300],
              filled: true,
              labelText: 'Nome',
            ),
          )
        ],
      ),
    );
  }
}
