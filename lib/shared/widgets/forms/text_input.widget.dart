import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextInput extends StatelessWidget {
  final String title;
  final String formControlName;
  final bool isSecure;

  const TextInput(
      {required this.title,
      required this.formControlName,
      this.isSecure = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveTextField(
          formControlName: formControlName,
          obscureText: isSecure,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
