import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextInput extends StatelessWidget {
  final String title;
  final String formControlName;
  final bool isSecure;

  final TextInputType? keyboardType;

  const TextInput({
    required this.title,
    required this.formControlName,
    this.isSecure = false,
    this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveTextField(
          formControlName: formControlName,
          keyboardType: keyboardType,
          obscureText: isSecure,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
